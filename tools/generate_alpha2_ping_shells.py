from __future__ import annotations

import argparse
import math
import shutil
import sys
import tempfile
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path


NAMESPACE_ROOT = "mrt_supports:alpha2/seismic-ping"
SUMMON_SHULKER = (
    'execute align xyz run summon minecraft:shulker ~ ~ ~ '
    '{NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Glowing:1b,'
    'DeathLootTable:"minecraft:empty",Tags:["Supports.Alpha02.OreHighlight",'
    '"Supports.Alpha02.OreHighlightNew"],cardinal_components:{"apoli:powers":'
    '{Powers:[{Type:"mrt_supports:alpha2/given/ore-highlight",'
    'Sources:["apoli:command"]}]}}}'
)


@dataclass(frozen=True)
class ColumnRecord:
    x: int
    z: int
    y: int
    height: int
    key: str
    distance_squared: float


@dataclass(frozen=True)
class Group:
    width: int
    height: int
    min_x: int
    y: int
    min_z: int
    keys: tuple[str, ...]
    volume: int
    distance_squared: float


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Generate Alpha-02 Seismic Ping scan and rendering helpers."
    )
    parser.add_argument("--maximum-radius", type=int, default=16)
    parser.add_argument("--band-width", type=int, default=2)
    parser.add_argument("--maximum-odd-width", type=int, default=15)
    parser.add_argument(
        "--verify-only",
        action="store_true",
        help="Generate and validate in temporary storage without replacing runtime files.",
    )
    return parser.parse_args()


def validate_args(args: argparse.Namespace) -> None:
    if not 1 <= args.maximum_radius <= 64:
        raise ValueError("maximum-radius must be between 1 and 64")
    if not 1 <= args.band_width <= 16:
        raise ValueError("band-width must be between 1 and 16")
    if not 1 <= args.maximum_odd_width <= 31:
        raise ValueError("maximum-odd-width must be between 1 and 31")
    if args.maximum_radius % args.band_width:
        raise ValueError("maximum-radius must be divisible by band-width")
    if args.maximum_odd_width % 2 == 0:
        raise ValueError("maximum-odd-width must be odd")


def relative_coordinate(value: int) -> str:
    return "~" if value == 0 else f"~{value}"


def function_number(value: int) -> str:
    return f"{value:02d}"


def column_record(x: int, z: int, bottom_y: int, height: int) -> ColumnRecord:
    center_y = bottom_y + (height - 1) / 2
    return ColumnRecord(
        x=x,
        z=z,
        y=bottom_y,
        height=height,
        key=f"{x},{z},{bottom_y},{height}",
        distance_squared=x * x + center_y * center_y + z * z,
    )


def add_group_commands(lines: list[str], group: Group) -> None:
    if group.width == 1:
        for dy in range(group.height):
            x = relative_coordinate(group.min_x)
            y = relative_coordinate(group.y + dy)
            z = relative_coordinate(group.min_z)
            remaining = function_number(group.height - dy)
            below = " unless block ~ ~-1 ~ #c:ores" if dy > 0 else ""
            lines.append(
                f"execute positioned {x} {y} {z} if block ~ ~ ~ #c:ores{below} "
                f"run function {NAMESPACE_ROOT}/scan/runs/{remaining}"
            )
        return

    lines.append("scoreboard players set $GroupValid A2.GroupValid 0")
    conditions: list[str] = []
    for dx in range(group.width):
        for dz in range(group.width):
            for dy in range(group.height):
                x = relative_coordinate(group.min_x + dx)
                y = relative_coordinate(group.y + dy)
                z = relative_coordinate(group.min_z + dz)
                conditions.append(f"if block {x} {y} {z} #c:ores")
    lines.append(
        f"execute {' '.join(conditions)} "
        "run scoreboard players set $GroupValid A2.GroupValid 1"
    )

    center_offset = (group.width - 1) // 2
    center_x = relative_coordinate(group.min_x + center_offset)
    bottom_y = relative_coordinate(group.y)
    center_z = relative_coordinate(group.min_z + center_offset)
    volume_name = f"{function_number(group.width)}x{function_number(group.height)}"
    lines.append(
        "execute if score $GroupValid A2.GroupValid matches 1 "
        f"positioned {center_x} {bottom_y} {center_z} "
        f"run function {NAMESPACE_ROOT}/render/spawn/volumes/{volume_name}"
    )

    for dx in range(group.width):
        for dz in range(group.width):
            for dy in range(group.height):
                x = relative_coordinate(group.min_x + dx)
                y = relative_coordinate(group.y + dy)
                z = relative_coordinate(group.min_z + dz)
                remaining = function_number(group.height - dy)
                below = " unless block ~ ~-1 ~ #c:ores" if dy > 0 else ""
                lines.append(
                    "execute if score $GroupValid A2.GroupValid matches 0 "
                    f"positioned {x} {y} {z} if block ~ ~ ~ #c:ores{below} "
                    f"run function {NAMESPACE_ROOT}/scan/runs/{remaining}"
                )


def write_lines(path: Path, lines: list[str]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write("\n".join(lines))
        handle.write("\n")


def make_vertical_records(
    offsets: list[tuple[int, int, int, int]],
) -> list[ColumnRecord]:
    columns: dict[tuple[int, int], list[int]] = defaultdict(list)
    for x, y, z, _ in offsets:
        columns[(x, z)].append(y)

    records: list[ColumnRecord] = []
    for (x, z), column_ys in columns.items():
        ys = sorted(column_ys)
        start_y = previous_y = ys[0]
        for current_y in ys[1:]:
            if current_y != previous_y + 1:
                records.append(column_record(x, z, start_y, previous_y - start_y + 1))
                start_y = current_y
            previous_y = current_y
        records.append(column_record(x, z, start_y, previous_y - start_y + 1))
    return records


def make_candidates(
    records: list[ColumnRecord], maximum_odd_width: int
) -> list[Group]:
    lookup = {record.key: record for record in records}
    candidates: list[Group] = []

    for record in records:
        for width in range(3, maximum_odd_width + 1, 2):
            keys: list[str] = []
            valid = True
            for dx in range(width):
                if not valid:
                    break
                for dz in range(width):
                    key = (
                        f"{record.x + dx},{record.z + dz},"
                        f"{record.y},{record.height}"
                    )
                    if key not in lookup:
                        valid = False
                        break
                    keys.append(key)
            if not valid:
                break

            center_offset = (width - 1) / 2
            center_x = record.x + center_offset
            center_y = record.y + (record.height - 1) / 2
            center_z = record.z + center_offset
            candidates.append(
                Group(
                    width=width,
                    height=record.height,
                    min_x=record.x,
                    y=record.y,
                    min_z=record.z,
                    keys=tuple(keys),
                    volume=width * width * record.height,
                    distance_squared=(
                        center_x * center_x
                        + center_y * center_y
                        + center_z * center_z
                    ),
                )
            )
    return candidates


def partition_groups(
    records: list[ColumnRecord], candidates: list[Group]
) -> tuple[list[Group], set[tuple[int, int]]]:
    claimed: set[str] = set()
    groups: list[Group] = []
    volume_shapes: set[tuple[int, int]] = set()

    ordered_candidates = sorted(
        candidates,
        key=lambda group: (
            -group.width,
            -group.height,
            group.distance_squared,
            group.min_x,
            group.y,
            group.min_z,
        ),
    )
    for candidate in ordered_candidates:
        if any(key in claimed for key in candidate.keys):
            continue
        claimed.update(candidate.keys)
        groups.append(candidate)
        volume_shapes.add((candidate.width, candidate.height))

    for record in records:
        if record.key in claimed:
            continue
        groups.append(
            Group(
                width=1,
                height=record.height,
                min_x=record.x,
                y=record.y,
                min_z=record.z,
                keys=(record.key,),
                volume=record.height,
                distance_squared=record.distance_squared,
            )
        )
    return groups, volume_shapes


def generate(args: argparse.Namespace, stage_root: Path) -> tuple[list[str], int, int, set[tuple[int, int]]]:
    band_directory = stage_root / "scan" / "bands"
    run_directory = stage_root / "scan" / "runs"
    spawn_height_directory = stage_root / "render" / "spawn" / "heights"
    spawn_volume_directory = stage_root / "render" / "spawn" / "volumes"
    initialize_height_directory = stage_root / "render" / "initialize" / "heights"
    initialize_volume_directory = stage_root / "render" / "initialize" / "volumes"

    for directory in (
        band_directory,
        run_directory,
        spawn_height_directory,
        spawn_volume_directory,
        initialize_height_directory,
        initialize_volume_directory,
    ):
        directory.mkdir(parents=True, exist_ok=True)

    total_positions = 0
    maximum_run_height = 1
    band_count = 0
    all_volume_shapes: set[tuple[int, int]] = set()
    summaries: list[str] = []

    for outer_radius in range(
        args.band_width, args.maximum_radius + 1, args.band_width
    ):
        band_count += 1
        inner_radius = outer_radius - args.band_width
        minimum_squared = -1 if inner_radius == 0 else inner_radius * inner_radius
        maximum_squared = outer_radius * outer_radius
        offsets: list[tuple[int, int, int, int]] = []

        for x in range(-outer_radius, outer_radius + 1):
            for y in range(-outer_radius, outer_radius + 1):
                for z in range(-outer_radius, outer_radius + 1):
                    distance_squared = x * x + y * y + z * z
                    if minimum_squared < distance_squared <= maximum_squared:
                        offsets.append((x, y, z, distance_squared))

        position_count = len(offsets)
        total_positions += position_count
        records = make_vertical_records(offsets)
        maximum_run_height = max(
            maximum_run_height, max(record.height for record in records)
        )
        candidates = make_candidates(records, args.maximum_odd_width)
        groups, volume_shapes = partition_groups(records, candidates)
        all_volume_shapes.update(volume_shapes)

        grouped_volume = sum(group.volume for group in groups)
        if grouped_volume != position_count:
            raise RuntimeError(
                f"Band {outer_radius} represents {grouped_volume} of "
                f"{position_count} positions"
            )
        if any(group.width % 2 == 0 for group in groups):
            raise RuntimeError(f"Band {outer_radius} contains an even-width group")

        ordered_groups = sorted(
            groups,
            key=lambda group: (
                group.distance_squared,
                group.min_x,
                group.y,
                group.min_z,
            ),
        )
        target_weight = math.ceil(position_count / 2)
        batch_a: list[Group] = []
        batch_b: list[Group] = []
        batch_a_weight = 0
        for group in ordered_groups:
            if batch_a_weight < target_weight:
                batch_a.append(group)
                batch_a_weight += group.volume
            else:
                batch_b.append(group)
        batch_b_weight = position_count - batch_a_weight

        radius_name = function_number(outer_radius)
        lines_a = [
            f"# Generated band batch A: {minimum_squared} < distance^2 <= "
            f"{maximum_squared} ({position_count} total positions).",
            "scoreboard players set "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            f"A2.ShellPos {position_count}",
            "scoreboard players add "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            f"A2.Checked {position_count}",
        ]
        for group in batch_a:
            add_group_commands(lines_a, group)

        lines_b = [
            f"# Generated band batch B: {minimum_squared} < distance^2 <= "
            f"{maximum_squared} (continues batch A)."
        ]
        for group in batch_b:
            add_group_commands(lines_b, group)

        write_lines(band_directory / radius_name / "first.mcfunction", lines_a)
        write_lines(band_directory / radius_name / "second.mcfunction", lines_b)

        width_groups = sum(group.width > 1 for group in groups)
        dense_shulkers = len(groups)
        summaries.append(
            f"{radius_name}: {position_count} positions; {len(records)} vertical "
            f"runs; {width_groups} odd-width groups; dense output "
            f"{dense_shulkers} shulkers ({position_count - dense_shulkers} saved); "
            f"batches {batch_a_weight}/{batch_b_weight}"
        )

    for limit in range(1, maximum_run_height + 1):
        name = function_number(limit)
        run_lines = ["scoreboard players set $Height A2.Height 1"]
        for step in range(1, limit):
            run_lines.append(
                f"execute if score $Height A2.Height matches {step} "
                f"if block ~ {relative_coordinate(step)} ~ #c:ores "
                f"run scoreboard players set $Height A2.Height {step + 1}"
            )
        for height in range(1, limit + 1):
            height_name = function_number(height)
            run_lines.append(
                f"execute if score $Height A2.Height matches {height} "
                f"run function {NAMESPACE_ROOT}/render/spawn/heights/{height_name}"
            )
        write_lines(run_directory / f"{name}.mcfunction", run_lines)

    for height in range(1, maximum_run_height + 1):
        height_name = function_number(height)
        spawn_lines = [
            "scoreboard players add "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            f"A2.Ores {height}",
            "scoreboard players add "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            f"A2.ShellOres {height}",
            "scoreboard players add "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            "A2.ShellShulkers 1",
            SUMMON_SHULKER,
            "execute align xyz as "
            "@e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlightNew,"
            "distance=..1,sort=nearest,limit=1] "
            f"run function {NAMESPACE_ROOT}/render/initialize/heights/{height_name}",
        ]
        write_lines(spawn_height_directory / f"{height_name}.mcfunction", spawn_lines)

        initialize_lines = [
            "scoreboard players operation @s A2.ScanID = "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.ScanID",
            "scale delay set pehkui:height 0",
            "scale delay set pehkui:width 0",
        ]
        if height > 1:
            initialize_lines.append(f"scale set pehkui:height {height}")
        initialize_lines.append("tag @s remove Supports.Alpha02.OreHighlightNew")
        write_lines(
            initialize_height_directory / f"{height_name}.mcfunction",
            initialize_lines,
        )

    for width, height in sorted(all_volume_shapes):
        shape_name = f"{function_number(width)}x{function_number(height)}"
        represented_ores = width * width * height
        spawn_lines = [
            "scoreboard players add "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            f"A2.Ores {represented_ores}",
            "scoreboard players add "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            f"A2.ShellOres {represented_ores}",
            "scoreboard players add "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] "
            "A2.ShellShulkers 1",
            SUMMON_SHULKER,
            "execute align xyz as "
            "@e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlightNew,"
            "distance=..1,sort=nearest,limit=1] "
            f"run function {NAMESPACE_ROOT}/render/initialize/volumes/{shape_name}",
        ]
        write_lines(spawn_volume_directory / f"{shape_name}.mcfunction", spawn_lines)

        initialize_lines = [
            "scoreboard players operation @s A2.ScanID = "
            "@a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.ScanID",
            "scale delay set pehkui:height 0",
            "scale delay set pehkui:width 0",
            f"scale set pehkui:width {width}",
        ]
        if height > 1:
            initialize_lines.append(f"scale set pehkui:height {height}")
        initialize_lines.append("tag @s remove Supports.Alpha02.OreHighlightNew")
        write_lines(
            initialize_volume_directory / f"{shape_name}.mcfunction",
            initialize_lines,
        )

    expected_band_count = args.maximum_radius // args.band_width
    if band_count != expected_band_count:
        raise RuntimeError(
            f"Expected {expected_band_count} bands, generated {band_count}"
        )
    if args.maximum_radius == 16 and total_positions != 17077:
        raise RuntimeError(
            f"Expected 17077 radius-16 positions, generated {total_positions}"
        )

    return summaries, total_positions, maximum_run_height, all_volume_shapes


def publish_directory(stage_path: Path, target_path: Path, function_root: Path) -> None:
    resolved_root = function_root.resolve()
    resolved_target = target_path.resolve(strict=False)
    if resolved_root not in resolved_target.parents:
        raise RuntimeError(f"Refusing to replace path outside Seismic Ping: {target_path}")
    target_path.parent.mkdir(parents=True, exist_ok=True)
    if target_path.exists():
        shutil.rmtree(target_path)
    shutil.move(str(stage_path), str(target_path))


def main() -> int:
    args = parse_args()
    validate_args(args)
    if args.maximum_radius != 16 or args.band_width != 2:
        print(
            "Warning: non-default geometry also requires updating the Apoli band "
            "range, dispatch functions, timing, and advancement targets.",
            file=sys.stderr,
        )

    pack_root = Path(__file__).resolve().parent.parent
    function_root = (
        pack_root / "data" / "mrt_supports" / "functions" / "alpha2" / "seismic-ping"
    )
    if not function_root.is_dir():
        raise FileNotFoundError(f"Seismic Ping function root not found: {function_root}")

    with tempfile.TemporaryDirectory(prefix="mrt-alpha2-ping-") as temporary:
        stage_root = Path(temporary) / "seismic-ping"
        summaries, total_positions, maximum_height, volume_shapes = generate(
            args, stage_root
        )

        if not args.verify_only:
            mappings = (
                (stage_root / "scan" / "bands", function_root / "scan" / "bands"),
                (stage_root / "scan" / "runs", function_root / "scan" / "runs"),
                (
                    stage_root / "render" / "spawn" / "heights",
                    function_root / "render" / "spawn" / "heights",
                ),
                (
                    stage_root / "render" / "spawn" / "volumes",
                    function_root / "render" / "spawn" / "volumes",
                ),
                (
                    stage_root / "render" / "initialize" / "heights",
                    function_root / "render" / "initialize" / "heights",
                ),
                (
                    stage_root / "render" / "initialize" / "volumes",
                    function_root / "render" / "initialize" / "volumes",
                ),
            )
            for stage_path, target_path in mappings:
                publish_directory(stage_path, target_path, function_root)

    for summary in summaries:
        print(summary)
    mode = "Verified" if args.verify_only else "Generated"
    print(
        f"{mode} {args.maximum_radius // args.band_width} disjoint bands "
        f"containing {total_positions} total positions."
    )
    print(f"{mode} helpers for heights 1 through {maximum_height}.")
    shape_names = ", ".join(
        f"{function_number(width)}x{function_number(height)}"
        for width, height in sorted(volume_shapes)
    )
    print(f"{mode} volume shapes: {shape_names}.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
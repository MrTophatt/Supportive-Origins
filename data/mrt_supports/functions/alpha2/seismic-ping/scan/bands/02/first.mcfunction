# Generated band batch A: -1 < distance^2 <= 4 (33 total positions).
scoreboard players set @a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.ShellPos 33
scoreboard players add @a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.Checked 33
execute positioned ~ ~-2 ~ if block ~ ~ ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/05
execute positioned ~ ~-1 ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/04
execute positioned ~ ~ ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/03
execute positioned ~ ~1 ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/02
execute positioned ~ ~2 ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/01
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/03
execute positioned ~-1 ~ ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/02
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/01
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/03
execute positioned ~ ~ ~-1 if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/02
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/01
execute positioned ~ ~-1 ~1 if block ~ ~ ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/03
execute positioned ~ ~ ~1 if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/02
execute positioned ~ ~1 ~1 if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/01
execute positioned ~1 ~-1 ~ if block ~ ~ ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/03
execute positioned ~1 ~ ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/02
execute positioned ~1 ~1 ~ if block ~ ~ ~ #c:ores unless block ~ ~-1 ~ #c:ores run function mrt_supports:alpha2/seismic-ping/scan/runs/01

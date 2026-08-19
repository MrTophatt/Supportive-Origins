# Keep the burst attached to the lantern's current bob height.
execute if score @s SW.LanternY matches -560000..-540001 positioned ~ ~-0.26 ~ run function mrt_supports:soulweaver/strands/strand-switch-at-position
execute if score @s SW.LanternY matches -540000..-520001 positioned ~ ~-0.24 ~ run function mrt_supports:soulweaver/strands/strand-switch-at-position
execute if score @s SW.LanternY matches -520000..-500001 positioned ~ ~-0.22 ~ run function mrt_supports:soulweaver/strands/strand-switch-at-position
execute if score @s SW.LanternY matches -500000..-480001 positioned ~ ~-0.20 ~ run function mrt_supports:soulweaver/strands/strand-switch-at-position
execute if score @s SW.LanternY matches -480000..-460001 positioned ~ ~-0.18 ~ run function mrt_supports:soulweaver/strands/strand-switch-at-position
execute if score @s SW.LanternY matches -460000..-440000 positioned ~ ~-0.16 ~ run function mrt_supports:soulweaver/strands/strand-switch-at-position
execute unless score @s SW.LanternY matches -560000..-440000 positioned ~ ~-0.20 ~ run function mrt_supports:soulweaver/strands/strand-switch-at-position

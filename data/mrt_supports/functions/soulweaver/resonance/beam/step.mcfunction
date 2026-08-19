# Draw the current point at body height using the active strand colour.
execute if score @s SW.LanternStrand matches 0 run particle minecraft:dust 0.20 1.00 0.35 0.65 ~ ~0.90 ~ 0 0 0 0 1
execute if score @s SW.LanternStrand matches 1 run particle minecraft:dust 0.20 0.45 1.00 0.65 ~ ~0.90 ~ 0 0 0 0 1
execute if score @s SW.LanternStrand matches 2 run particle minecraft:dust 1.00 0.25 0.05 0.65 ~ ~0.90 ~ 0 0 0 0 1
execute if score @s SW.LanternStrand matches 3 run particle minecraft:dust 0.65 0.20 1.00 0.65 ~ ~0.90 ~ 0 0 0 0 1
execute if score @s SW.LanternStrand matches 4 run particle minecraft:dust 1.00 0.75 0.15 0.65 ~ ~0.90 ~ 0 0 0 0 1

# Advance at quarter-block spacing, stopping on the target or after 200 blocks.
scoreboard players add @s SW.ResonantRayStep 1
execute unless entity @a[tag=Supports.Soulweaver.ResonantBeamTarget,distance=..0.30] if score @s SW.ResonantRayStep matches ..799 positioned ^ ^ ^0.25 run function mrt_supports:soulweaver/resonance/beam/step

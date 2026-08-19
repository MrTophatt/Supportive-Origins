effect give @s minecraft:speed 8 1 true
effect give @s minecraft:strength 8 0 true
effect give @s minecraft:resistance 8 1 true
effect give @s minecraft:health_boost 8 0 true
effect give @s minecraft:regeneration 5 1 true
execute at @s run playsound minecraft:block.respawn_anchor.charge player @a ~ ~1 ~ 0.85 1.25
execute at @s run playsound minecraft:block.sculk_catalyst.bloom player @a ~ ~1 ~ 0.8 1.15
execute at @s run playsound minecraft:block.amethyst_block.chime player @a ~ ~1 ~ 0.7 1.65
particle minecraft:soul ~ ~1 ~ 0.45 0.75 0.45 0.06 24 normal @a
particle minecraft:sculk_soul ~ ~1 ~ 0.38 0.65 0.38 0.045 20 normal @a
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.8 0.5 0.025 32 normal @a
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.7 0.4 0.04 26 normal @a
particle minecraft:item minecraft:soul_lantern ~ ~1 ~ 0.45 0.65 0.45 0.08 28 normal @a
tag @s add Supports.Soulweaver.GuardianSaved

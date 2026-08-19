execute in minecraft:overworld as @e[tag=Supports.Soulweaver.LanternCarrier] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.LanternDisplay] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.LanternRestTarget] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan

execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.LanternCarrier] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.LanternDisplay] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.LanternRestTarget] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan

execute in minecraft:the_end as @e[tag=Supports.Soulweaver.LanternCarrier] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.LanternDisplay] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.LanternRestTarget] at @s run function mrt_supports:soulweaver/lantern/cleanup-orphan

execute in minecraft:overworld as @e[type=minecraft:llama_spit,tag=Supports.Soulweaver.UnravelProjectile] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.035 0.035 0.035 0.003 3
execute in minecraft:the_nether as @e[type=minecraft:llama_spit,tag=Supports.Soulweaver.UnravelProjectile] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.035 0.035 0.035 0.003 3
execute in minecraft:the_end as @e[type=minecraft:llama_spit,tag=Supports.Soulweaver.UnravelProjectile] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.035 0.035 0.035 0.003 3

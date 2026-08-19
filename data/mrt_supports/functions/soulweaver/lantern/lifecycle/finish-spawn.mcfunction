# Assemble the lantern pair
ride @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay,sort=nearest,limit=1,distance=..2] mount @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewLanternCarrier,sort=nearest,limit=1,distance=..2]
scoreboard players set @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay,sort=nearest,limit=1,distance=..2] ml.phase100 0
scoreboard players set @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay,sort=nearest,limit=1,distance=..2] speed.bob 1200
execute store result score $LanternSpawnYaw SW.LanternAngle run data get entity @s Rotation[0] 100
execute store result entity @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay,sort=nearest,limit=1,distance=..2] Rotation[0] float 0.01 run scoreboard players get $LanternSpawnYaw SW.LanternAngle
tag @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewLanternCarrier,sort=nearest,limit=1,distance=..2] remove Supports.Soulweaver.NewLanternCarrier
tag @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay,sort=nearest,limit=1,distance=..2] remove Supports.Soulweaver.NewLanternDisplay
tag @s remove Supports.Soulweaver.LanternForceRespawn

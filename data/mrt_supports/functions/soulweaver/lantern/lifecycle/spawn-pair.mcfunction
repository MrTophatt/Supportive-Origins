# Create and identify the lantern pair
tag @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewLanternCarrier] remove Supports.Soulweaver.NewLanternCarrier
tag @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay] remove Supports.Soulweaver.NewLanternDisplay
summon minecraft:armor_stand ~ ~ ~ {Tags:["Supports.Soulweaver.LanternCarrier","Supports.Soulweaver.NewLanternCarrier"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Silent:1b,PersistenceRequired:1b}
summon minecraft:block_display ~ ~ ~ {Tags:["Supports.Soulweaver.LanternDisplay","Supports.Soulweaver.NewLanternDisplay"],block_state:{Name:"minecraft:soul_lantern"},interpolation_duration:2,start_interpolation:0,shadow_radius:0.0f,shadow_strength:0.0f,transformation:{translation:[-0.5f,-0.5f,-0.5f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
scoreboard players operation @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewLanternCarrier,sort=nearest,limit=1,distance=..2] Supports.SW.ID = @s Supports.SW.ID
scoreboard players operation @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay,sort=nearest,limit=1,distance=..2] Supports.SW.ID = @s Supports.SW.ID
scoreboard players operation @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewLanternCarrier,sort=nearest,limit=1,distance=..2] SW.LanternGeneration = @s SW.LanternGeneration
scoreboard players operation @e[type=minecraft:block_display,tag=Supports.Soulweaver.NewLanternDisplay,sort=nearest,limit=1,distance=..2] SW.LanternGeneration = @s SW.LanternGeneration

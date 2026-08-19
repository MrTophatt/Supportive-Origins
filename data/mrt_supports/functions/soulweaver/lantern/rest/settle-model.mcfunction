execute unless entity @s[tag=Supports.Soulweaver.LanternRestBobStopped] run data merge entity @s {start_interpolation:0,interpolation_duration:10,transformation:{translation:[-0.5f,-0.5f,-0.5f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
execute unless entity @s[tag=Supports.Soulweaver.LanternRestBobStopped] run scoreboard players set @s SW.LanternY -500000
tag @s add Supports.Soulweaver.LanternRestBobStopped

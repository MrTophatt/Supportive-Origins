# Cancel resting and wake the lantern
execute if score @s SW.LanternRest matches 1 run scoreboard players set @s SW.LanternRest 0
execute if score @s SW.LanternRest matches 2..3 run scoreboard players set @s SW.LanternRest 4
tag @s remove Supports.Soulweaver.LanternRestReady

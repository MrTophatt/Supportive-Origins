scoreboard players reset $Stand Supports.SW.ID
scoreboard players reset $Stand Supports.SW.LinkID
execute as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand,limit=1] run scoreboard players operation $Stand Supports.SW.ID = @s Supports.SW.ID
execute as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand,limit=1] run scoreboard players operation $Stand Supports.SW.LinkID = @s Supports.SW.LinkID
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand,limit=1] run scoreboard players operation $Stand Supports.SW.ID = @s Supports.SW.ID
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand,limit=1] run scoreboard players operation $Stand Supports.SW.LinkID = @s Supports.SW.LinkID
execute if score $Stand Supports.SW.ID matches 1.. run scoreboard players operation @s Supports.SW.ID = $Stand Supports.SW.ID
execute if score $Stand Supports.SW.LinkID matches 1.. run scoreboard players operation @s Supports.SW.LinkID = $Stand Supports.SW.LinkID
tag @s add Supports.Soulweaver.LinkedEntity
apoli:power grant @s mrt_supports:soulweaver/given/linked-player mrt_supports:soulweaver

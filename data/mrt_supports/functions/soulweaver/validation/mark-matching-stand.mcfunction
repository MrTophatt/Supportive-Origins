tag @s remove Supports.Soulweaver.HasValidationStand
tag @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand] remove Supports.Soulweaver.ValidationStand
execute in minecraft:overworld run tag @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand] remove Supports.Soulweaver.ValidationStand
scoreboard players operation $Validate Supports.SW.LinkID = @s Supports.SW.LinkID
execute if score @s Supports.SW.LinkID matches 1.. as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.LinkID = $Validate Supports.SW.LinkID run tag @s add Supports.Soulweaver.ValidationStand
execute if score @s Supports.SW.LinkID matches 1.. in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.LinkID = $Validate Supports.SW.LinkID run tag @s add Supports.Soulweaver.ValidationStand
execute if entity @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand,limit=1] run tag @s add Supports.Soulweaver.HasValidationStand
execute in minecraft:overworld if entity @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.ValidationStand,limit=1] run tag @s add Supports.Soulweaver.HasValidationStand
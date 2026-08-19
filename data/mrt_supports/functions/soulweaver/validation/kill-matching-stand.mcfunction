scoreboard players operation $Unlink Supports.SW.LinkID = @s Supports.SW.LinkID
execute if score @s Supports.SW.LinkID matches 1.. as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.LinkID = $Unlink Supports.SW.LinkID run kill @s
execute if score @s Supports.SW.LinkID matches 1.. in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.LinkID = $Unlink Supports.SW.LinkID run kill @s

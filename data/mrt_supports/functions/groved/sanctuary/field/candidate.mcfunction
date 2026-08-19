# Check if entity is inside the cylinder
tag @s remove Supports.Groved.InSanctuary
execute store result score @s Groved.OffsetX run data get entity @s Pos[0] 100
execute store result score @s Groved.OffsetY run data get entity @s Pos[1] 100
execute store result score @s Groved.OffsetZ run data get entity @s Pos[2] 100
scoreboard players operation @s Groved.OffsetX -= $FieldAnchorX Groved.OffsetX
scoreboard players operation @s Groved.OffsetY -= $FieldAnchorY Groved.OffsetY
scoreboard players operation @s Groved.OffsetZ -= $FieldAnchorZ Groved.OffsetZ
scoreboard players operation @s Groved.OffsetX *= @s Groved.OffsetX
scoreboard players operation @s Groved.OffsetZ *= @s Groved.OffsetZ
scoreboard players operation @s Groved.RadiusSq = @s Groved.OffsetX
scoreboard players operation @s Groved.RadiusSq += @s Groved.OffsetZ
execute if score @s Groved.RadiusSq matches ..250000 if score @s Groved.OffsetY matches 0..500 run tag @s add Supports.Groved.InSanctuary

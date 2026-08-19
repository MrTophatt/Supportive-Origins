# Consume one item without deleting the rest of its dropped stack.
execute store result score #DeathDropCount ml.tmp run data get entity @s Item.Count 1
scoreboard players remove #DeathDropCount ml.tmp 1
execute if score #DeathDropCount ml.tmp matches 1.. store result entity @s Item.Count byte 1 run scoreboard players get #DeathDropCount ml.tmp
execute if score #DeathDropCount ml.tmp matches ..0 run kill @s

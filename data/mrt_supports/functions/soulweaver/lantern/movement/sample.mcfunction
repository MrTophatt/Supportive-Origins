# Compare the player's current position with the previous tick at 1 cm precision.
execute store result score @s SW.MoveX run data get entity @s Pos[0] 100
execute store result score @s SW.MoveY run data get entity @s Pos[1] 100
execute store result score @s SW.MoveZ run data get entity @s Pos[2] 100

scoreboard players set @s SW.IsMoving 0
execute if score @s SW.PosReady matches 1 unless score @s SW.MoveX = @s SW.LastX run scoreboard players set @s SW.IsMoving 1
execute if score @s SW.PosReady matches 1 unless score @s SW.MoveY = @s SW.LastY run scoreboard players set @s SW.IsMoving 1
execute if score @s SW.PosReady matches 1 unless score @s SW.MoveZ = @s SW.LastZ run scoreboard players set @s SW.IsMoving 1

scoreboard players operation @s SW.LastX = @s SW.MoveX
scoreboard players operation @s SW.LastY = @s SW.MoveY
scoreboard players operation @s SW.LastZ = @s SW.MoveZ
scoreboard players set @s SW.PosReady 1

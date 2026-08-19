# Get projectile position from the Sanctuary center
execute store result score @s Groved.CrossX run data get entity @s Pos[0] 1000
execute store result score @s Groved.CrossY run data get entity @s Pos[1] 1000
execute store result score @s Groved.CrossZ run data get entity @s Pos[2] 1000
scoreboard players operation @s Groved.CrossX -= @s Groved.AnchorX
scoreboard players operation @s Groved.CrossY -= @s Groved.AnchorY
scoreboard players operation @s Groved.CrossZ -= @s Groved.AnchorZ

# Check if projectile is inside the cylinder
scoreboard players operation @s Groved.CrossRSq = @s Groved.CrossX
scoreboard players operation @s Groved.CrossRSq *= @s Groved.CrossX
scoreboard players operation @s Groved.TempNum = @s Groved.CrossZ
scoreboard players operation @s Groved.TempNum *= @s Groved.CrossZ
scoreboard players operation @s Groved.CrossRSq += @s Groved.TempNum
scoreboard players set @s Groved.CrossRIn 0
scoreboard players set @s Groved.CrossYIn 0
execute if score @s Groved.CrossRSq matches ..25000000 run scoreboard players set @s Groved.CrossRIn 1
execute if score @s Groved.CrossY matches 0..5000 run scoreboard players set @s Groved.CrossYIn 1
scoreboard players set @s Groved.CrossedIn 0
execute if score @s Groved.CrossRIn matches 1 if score @s Groved.CrossYIn matches 1 run scoreboard players set @s Groved.CrossedIn 1

# Check projectiles before they reach the wall
scoreboard players set @s Groved.InRange 0
execute if score @s Groved.CrossRSq matches ..100000000 if score @s Groved.CrossY matches -5000..10000 run scoreboard players set @s Groved.InRange 1

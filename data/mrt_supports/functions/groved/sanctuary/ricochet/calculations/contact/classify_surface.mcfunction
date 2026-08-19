# Get the exact wall hit position
scoreboard players operation @s Groved.MidX = @s Groved.SafeX
scoreboard players operation @s Groved.MidX += @s Groved.CrossX
scoreboard players operation @s Groved.MidX /= $Constant2 Groved.ConstNum
scoreboard players operation @s Groved.MidY = @s Groved.SafeY
scoreboard players operation @s Groved.MidY += @s Groved.CrossY
scoreboard players operation @s Groved.MidY /= $Constant2 Groved.ConstNum
scoreboard players operation @s Groved.MidZ = @s Groved.SafeZ
scoreboard players operation @s Groved.MidZ += @s Groved.CrossZ
scoreboard players operation @s Groved.MidZ /= $Constant2 Groved.ConstNum

# Check if projectile hit side, floor, or roof
scoreboard players operation @s Groved.SafeRadSq = @s Groved.SafeX
scoreboard players operation @s Groved.SafeRadSq *= @s Groved.SafeX
scoreboard players operation @s Groved.TempNum = @s Groved.SafeZ
scoreboard players operation @s Groved.TempNum *= @s Groved.SafeZ
scoreboard players operation @s Groved.SafeRadSq += @s Groved.TempNum
scoreboard players operation @s Groved.CrossRSq = @s Groved.CrossX
scoreboard players operation @s Groved.CrossRSq *= @s Groved.CrossX
scoreboard players operation @s Groved.TempNum = @s Groved.CrossZ
scoreboard players operation @s Groved.TempNum *= @s Groved.CrossZ
scoreboard players operation @s Groved.CrossRSq += @s Groved.TempNum
scoreboard players set @s Groved.SafeRadIn 0
scoreboard players set @s Groved.CrossRIn 0
execute if score @s Groved.SafeRadSq matches ..25000000 run scoreboard players set @s Groved.SafeRadIn 1
execute if score @s Groved.CrossRSq matches ..25000000 run scoreboard players set @s Groved.CrossRIn 1
scoreboard players set @s Groved.SafeYIn 0
scoreboard players set @s Groved.CrossYIn 0
execute if score @s Groved.SafeY matches 0..5000 run scoreboard players set @s Groved.SafeYIn 1
execute if score @s Groved.CrossY matches 0..5000 run scoreboard players set @s Groved.CrossYIn 1
scoreboard players set @s Groved.HitWall 0
scoreboard players set @s Groved.HitCap 0
scoreboard players set @s Groved.HitFloor 0
scoreboard players set @s Groved.HitRoof 0
execute unless score @s Groved.SafeRadIn = @s Groved.CrossRIn run scoreboard players set @s Groved.HitWall 1
execute unless score @s Groved.SafeYIn = @s Groved.CrossYIn run scoreboard players set @s Groved.HitCap 1
execute if score @s Groved.HitCap matches 1 if score @s Groved.MidY matches ..2500 run scoreboard players set @s Groved.HitFloor 1
execute if score @s Groved.HitCap matches 1 if score @s Groved.MidY matches 2501.. run scoreboard players set @s Groved.HitRoof 1

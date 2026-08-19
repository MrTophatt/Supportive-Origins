# Start at exact hit position
scoreboard players operation @s Groved.SafeX = @s Groved.MidX
scoreboard players operation @s Groved.SafeY = @s Groved.MidY
scoreboard players operation @s Groved.SafeZ = @s Groved.MidZ

# Move projectile away from side wall
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.MidX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum /= $Constant50 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 if score @s Groved.TrackSide matches 1 run scoreboard players operation @s Groved.SafeX -= @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 if score @s Groved.TrackSide matches 0 run scoreboard players operation @s Groved.SafeX += @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.MidZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum /= $Constant50 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 if score @s Groved.TrackSide matches 1 run scoreboard players operation @s Groved.SafeZ -= @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 if score @s Groved.TrackSide matches 0 run scoreboard players operation @s Groved.SafeZ += @s Groved.TempNum

# Move projectile away from floor or roof
execute if score @s Groved.HitFloor matches 1 if score @s Groved.TrackSide matches 1 run scoreboard players set @s Groved.SafeY 100
execute if score @s Groved.HitFloor matches 1 if score @s Groved.TrackSide matches 0 run scoreboard players set @s Groved.SafeY -100
execute if score @s Groved.HitRoof matches 1 if score @s Groved.TrackSide matches 1 run scoreboard players set @s Groved.SafeY 4900
execute if score @s Groved.HitRoof matches 1 if score @s Groved.TrackSide matches 0 run scoreboard players set @s Groved.SafeY 5100

# Place projectile back on starting side
scoreboard players operation @s Groved.CrossX = @s Groved.SafeX
scoreboard players operation @s Groved.CrossY = @s Groved.SafeY
scoreboard players operation @s Groved.CrossZ = @s Groved.SafeZ
scoreboard players operation @s Groved.CrossX += @s Groved.AnchorX
scoreboard players operation @s Groved.CrossY += @s Groved.AnchorY
scoreboard players operation @s Groved.CrossZ += @s Groved.AnchorZ
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s Groved.CrossX
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s Groved.CrossY
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s Groved.CrossZ

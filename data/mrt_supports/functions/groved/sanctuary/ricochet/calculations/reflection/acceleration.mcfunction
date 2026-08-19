# Save fireball acceleration
execute store result score @s Groved.InAccelX run data get entity @s power[0] 100000
execute store result score @s Groved.InAccelY run data get entity @s power[1] 100000
execute store result score @s Groved.InAccelZ run data get entity @s power[2] 100000
scoreboard players operation @s Groved.AccelX = @s Groved.InAccelX
scoreboard players operation @s Groved.AccelY = @s Groved.InAccelY
scoreboard players operation @s Groved.AccelZ = @s Groved.InAccelZ

# Change fireball acceleration direction
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.DotProd = @s Groved.AccelX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.DotProd *= @s Groved.MidX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.AccelZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum *= @s Groved.MidZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.DotProd += @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.ReflectM = @s Groved.DotProd
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.ReflectM *= $Constant2 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.ReflectM /= @s Groved.NormalSq
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.ReflectM
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum *= @s Groved.MidX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum /= $Constant1000 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.AccelX -= @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.ReflectM
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum *= @s Groved.MidZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum /= $Constant1000 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.AccelZ -= @s Groved.TempNum
execute if score @s Groved.HitCap matches 1 run scoreboard players operation @s Groved.AccelY *= $ConstantNeg1 Groved.ConstNum

function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/acceleration/normalize

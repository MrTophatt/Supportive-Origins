# Save projectile speed and direction
execute store result score @s Groved.InMotionX run data get entity @s Motion[0] 10000
execute store result score @s Groved.InMotionY run data get entity @s Motion[1] 10000
execute store result score @s Groved.InMotionZ run data get entity @s Motion[2] 10000
scoreboard players operation @s Groved.MotionX = @s Groved.InMotionX
scoreboard players operation @s Groved.MotionY = @s Groved.InMotionY
scoreboard players operation @s Groved.MotionZ = @s Groved.InMotionZ

# Change direction after hitting side wall
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.DotProd = @s Groved.MotionX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.DotProd *= @s Groved.MidX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.MotionZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum *= @s Groved.MidZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.DotProd += @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.NormalSq = @s Groved.MidX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.NormalSq *= @s Groved.MidX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.MidZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum *= @s Groved.MidZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.NormalSq += @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.NormalSq += $Constant999 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.NormalSq /= $Constant1000 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.ReflectM = @s Groved.DotProd
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.ReflectM *= $Constant2 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.ReflectM /= @s Groved.NormalSq
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.ReflectM
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum *= @s Groved.MidX
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum /= $Constant1000 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.MotionX -= @s Groved.TempNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum = @s Groved.ReflectM
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum *= @s Groved.MidZ
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.TempNum /= $Constant1000 Groved.ConstNum
execute if score @s Groved.HitWall matches 1 run scoreboard players operation @s Groved.MotionZ -= @s Groved.TempNum

# Reverse vertical speed after hitting floor or roof
execute if score @s Groved.HitCap matches 1 run scoreboard players operation @s Groved.MotionY *= $ConstantNeg1 Groved.ConstNum

# Keep bounce at or below original speed
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/normalize

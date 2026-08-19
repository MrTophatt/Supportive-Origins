# Measure original projectile speed
scoreboard players operation @s Groved.CheckX = @s Groved.InMotionX
scoreboard players operation @s Groved.CheckY = @s Groved.InMotionY
scoreboard players operation @s Groved.CheckZ = @s Groved.InMotionZ
scoreboard players operation @s Groved.CheckX /= $Constant4 Groved.ConstNum
scoreboard players operation @s Groved.CheckY /= $Constant4 Groved.ConstNum
scoreboard players operation @s Groved.CheckZ /= $Constant4 Groved.ConstNum
scoreboard players operation @s Groved.SpeedInSq = @s Groved.CheckX
scoreboard players operation @s Groved.SpeedInSq *= @s Groved.CheckX
scoreboard players operation @s Groved.TempNum = @s Groved.CheckY
scoreboard players operation @s Groved.TempNum *= @s Groved.CheckY
scoreboard players operation @s Groved.SpeedInSq += @s Groved.TempNum
scoreboard players operation @s Groved.TempNum = @s Groved.CheckZ
scoreboard players operation @s Groved.TempNum *= @s Groved.CheckZ
scoreboard players operation @s Groved.SpeedInSq += @s Groved.TempNum
scoreboard players operation @s Groved.SqrtValue = @s Groved.SpeedInSq
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/sqrt/start
scoreboard players operation @s Groved.SpeedIn = @s Groved.SqrtRoot

# Keep the first ricochet speed as the target for speed-preserving projectiles
execute if entity @s[type=#mrt_supports:sanctuary_speed_preserving_projectiles] run scoreboard players operation @s Groved.SqrtSq = @s Groved.SqrtRoot
execute if entity @s[type=#mrt_supports:sanctuary_speed_preserving_projectiles] run scoreboard players operation @s Groved.SqrtSq *= @s Groved.SqrtRoot
execute if entity @s[type=#mrt_supports:sanctuary_speed_preserving_projectiles] if score @s Groved.SqrtSq < @s Groved.SpeedInSq run scoreboard players add @s Groved.SpeedIn 1
execute if entity @s[type=#mrt_supports:sanctuary_speed_preserving_projectiles] unless score @s Groved.KeepSpeed matches 1.. run scoreboard players operation @s Groved.KeepSpeed = @s Groved.SpeedIn
execute if entity @s[type=#mrt_supports:sanctuary_speed_preserving_projectiles] if score @s Groved.KeepSpeed matches 1.. run scoreboard players operation @s Groved.SpeedIn = @s Groved.KeepSpeed

# Measure bounced projectile speed
scoreboard players operation @s Groved.CheckX = @s Groved.MotionX
scoreboard players operation @s Groved.CheckY = @s Groved.MotionY
scoreboard players operation @s Groved.CheckZ = @s Groved.MotionZ
execute if score @s Groved.CheckX matches 1.. run scoreboard players operation @s Groved.CheckX += $Constant3 Groved.ConstNum
execute if score @s Groved.CheckX matches ..-1 run scoreboard players operation @s Groved.CheckX -= $Constant3 Groved.ConstNum
execute if score @s Groved.CheckY matches 1.. run scoreboard players operation @s Groved.CheckY += $Constant3 Groved.ConstNum
execute if score @s Groved.CheckY matches ..-1 run scoreboard players operation @s Groved.CheckY -= $Constant3 Groved.ConstNum
execute if score @s Groved.CheckZ matches 1.. run scoreboard players operation @s Groved.CheckZ += $Constant3 Groved.ConstNum
execute if score @s Groved.CheckZ matches ..-1 run scoreboard players operation @s Groved.CheckZ -= $Constant3 Groved.ConstNum
scoreboard players operation @s Groved.CheckX /= $Constant4 Groved.ConstNum
scoreboard players operation @s Groved.CheckY /= $Constant4 Groved.ConstNum
scoreboard players operation @s Groved.CheckZ /= $Constant4 Groved.ConstNum
scoreboard players operation @s Groved.SpdOutSq = @s Groved.CheckX
scoreboard players operation @s Groved.SpdOutSq *= @s Groved.CheckX
scoreboard players operation @s Groved.TempNum = @s Groved.CheckY
scoreboard players operation @s Groved.TempNum *= @s Groved.CheckY
scoreboard players operation @s Groved.SpdOutSq += @s Groved.TempNum
scoreboard players operation @s Groved.TempNum = @s Groved.CheckZ
scoreboard players operation @s Groved.TempNum *= @s Groved.CheckZ
scoreboard players operation @s Groved.SpdOutSq += @s Groved.TempNum
scoreboard players operation @s Groved.SqrtValue = @s Groved.SpdOutSq
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/sqrt/start
scoreboard players operation @s Groved.SpeedOut = @s Groved.SqrtRoot
scoreboard players operation @s Groved.SqrtSq = @s Groved.SqrtRoot
scoreboard players operation @s Groved.SqrtSq *= @s Groved.SqrtRoot
execute if score @s Groved.SqrtSq < @s Groved.SpdOutSq run scoreboard players add @s Groved.SpeedOut 1

# Use normal bounce or reverse very slow projectile
execute if score @s Groved.SpeedIn matches 1.. if score @s Groved.SpeedOut matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/apply
execute unless score @s Groved.SpeedIn matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/fallback
execute if score @s Groved.SpeedIn matches 1.. unless score @s Groved.SpeedOut matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/fallback

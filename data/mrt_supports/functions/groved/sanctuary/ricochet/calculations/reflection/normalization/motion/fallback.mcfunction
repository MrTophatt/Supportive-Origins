# Reverse projectile when too slow to measure
scoreboard players operation @s Groved.MotionX = @s Groved.InMotionX
scoreboard players operation @s Groved.MotionY = @s Groved.InMotionY
scoreboard players operation @s Groved.MotionZ = @s Groved.InMotionZ
scoreboard players operation @s Groved.MotionX *= $ConstantNeg1 Groved.ConstNum
scoreboard players operation @s Groved.MotionY *= $ConstantNeg1 Groved.ConstNum
scoreboard players operation @s Groved.MotionZ *= $ConstantNeg1 Groved.ConstNum
execute unless entity @s[type=#mrt_supports:sanctuary_speed_preserving_projectiles] run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/dampen
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/store

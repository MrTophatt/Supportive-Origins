# Scale bounce to its target speed
scoreboard players operation @s Groved.MotionX *= @s Groved.SpeedIn
scoreboard players operation @s Groved.MotionX /= @s Groved.SpeedOut
scoreboard players operation @s Groved.MotionY *= @s Groved.SpeedIn
scoreboard players operation @s Groved.MotionY /= @s Groved.SpeedOut
scoreboard players operation @s Groved.MotionZ *= @s Groved.SpeedIn
scoreboard players operation @s Groved.MotionZ /= @s Groved.SpeedOut
execute unless entity @s[type=#mrt_supports:sanctuary_speed_preserving_projectiles] run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/dampen
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/motion/store

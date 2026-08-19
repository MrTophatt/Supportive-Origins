# Scale fireball acceleration to original or lower
scoreboard players operation @s Groved.AccelX *= @s Groved.SpeedIn
scoreboard players operation @s Groved.AccelX /= @s Groved.SpeedOut
scoreboard players operation @s Groved.AccelY *= @s Groved.SpeedIn
scoreboard players operation @s Groved.AccelY /= @s Groved.SpeedOut
scoreboard players operation @s Groved.AccelZ *= @s Groved.SpeedIn
scoreboard players operation @s Groved.AccelZ /= @s Groved.SpeedOut
# Reduce fireball acceleration by 10%
scoreboard players operation @s Groved.AccelX *= $DampeningNumerator Groved.ConstNum
scoreboard players operation @s Groved.AccelX /= $DampeningDenominator Groved.ConstNum
scoreboard players operation @s Groved.AccelY *= $DampeningNumerator Groved.ConstNum
scoreboard players operation @s Groved.AccelY /= $DampeningDenominator Groved.ConstNum
scoreboard players operation @s Groved.AccelZ *= $DampeningNumerator Groved.ConstNum
scoreboard players operation @s Groved.AccelZ /= $DampeningDenominator Groved.ConstNum
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/acceleration/store

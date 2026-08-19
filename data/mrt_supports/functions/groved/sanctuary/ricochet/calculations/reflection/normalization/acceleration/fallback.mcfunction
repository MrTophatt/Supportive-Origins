# Reverse fireball acceleration when too small to measure
scoreboard players operation @s Groved.AccelX = @s Groved.InAccelX
scoreboard players operation @s Groved.AccelY = @s Groved.InAccelY
scoreboard players operation @s Groved.AccelZ = @s Groved.InAccelZ
scoreboard players operation @s Groved.AccelX *= $ConstantNeg1 Groved.ConstNum
scoreboard players operation @s Groved.AccelY *= $ConstantNeg1 Groved.ConstNum
scoreboard players operation @s Groved.AccelZ *= $ConstantNeg1 Groved.ConstNum
scoreboard players operation @s Groved.AccelX *= $DampeningNumerator Groved.ConstNum
scoreboard players operation @s Groved.AccelX /= $DampeningDenominator Groved.ConstNum
scoreboard players operation @s Groved.AccelY *= $DampeningNumerator Groved.ConstNum
scoreboard players operation @s Groved.AccelY /= $DampeningDenominator Groved.ConstNum
scoreboard players operation @s Groved.AccelZ *= $DampeningNumerator Groved.ConstNum
scoreboard players operation @s Groved.AccelZ /= $DampeningDenominator Groved.ConstNum
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/acceleration/store

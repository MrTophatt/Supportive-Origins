# Measure original fireball acceleration
scoreboard players operation @s Groved.CheckX = @s Groved.InAccelX
scoreboard players operation @s Groved.CheckY = @s Groved.InAccelY
scoreboard players operation @s Groved.CheckZ = @s Groved.InAccelZ
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

# Measure bounced fireball acceleration
scoreboard players operation @s Groved.CheckX = @s Groved.AccelX
scoreboard players operation @s Groved.CheckY = @s Groved.AccelY
scoreboard players operation @s Groved.CheckZ = @s Groved.AccelZ
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

execute if score @s Groved.SpeedIn matches 1.. if score @s Groved.SpeedOut matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/acceleration/apply
execute unless score @s Groved.SpeedIn matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/acceleration/fallback
execute if score @s Groved.SpeedIn matches 1.. unless score @s Groved.SpeedOut matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/acceleration/fallback

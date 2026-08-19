# Check next possible square root
scoreboard players operation @s Groved.SqrtMid = @s Groved.SqrtLow
scoreboard players operation @s Groved.SqrtMid += @s Groved.SqrtHigh
scoreboard players operation @s Groved.SqrtMid /= $Constant2 Groved.ConstNum
scoreboard players operation @s Groved.SqrtSq = @s Groved.SqrtMid
scoreboard players operation @s Groved.SqrtSq *= @s Groved.SqrtMid
execute if score @s Groved.SqrtSq <= @s Groved.SqrtValue run scoreboard players operation @s Groved.SqrtLow = @s Groved.SqrtMid
execute if score @s Groved.SqrtSq > @s Groved.SqrtValue run scoreboard players operation @s Groved.SqrtHigh = @s Groved.SqrtMid
scoreboard players remove @s Groved.SqrtStep 1
execute if score @s Groved.SqrtStep matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/sqrt/step

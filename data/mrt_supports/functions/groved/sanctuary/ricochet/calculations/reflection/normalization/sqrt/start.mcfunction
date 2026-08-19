# Find whole-number square root
scoreboard players set @s Groved.SqrtLow 0
scoreboard players set @s Groved.SqrtHigh 46341
scoreboard players set @s Groved.SqrtStep 16
function mrt_supports:groved/sanctuary/ricochet/calculations/reflection/normalization/sqrt/step
scoreboard players operation @s Groved.SqrtRoot = @s Groved.SqrtLow

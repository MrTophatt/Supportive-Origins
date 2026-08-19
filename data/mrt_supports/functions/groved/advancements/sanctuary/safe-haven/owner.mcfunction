function mrt_supports:groved/sanctuary/field/candidate
execute if entity @s[tag=Supports.Groved.InSanctuary] run function mrt_supports:groved/advancements/sanctuary/safe-haven/record
tag @s remove Supports.Groved.InSanctuary

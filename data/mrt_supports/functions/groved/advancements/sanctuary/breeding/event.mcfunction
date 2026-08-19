execute unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run scoreboard players add @s Groved.BreedNum 1
execute if score @s Groved.BreedNum matches 1.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run advancement grant @s only mrt_supports:groved/love_is_in_the_air breeding_1
execute if score @s Groved.BreedNum matches 2.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run advancement grant @s only mrt_supports:groved/love_is_in_the_air breeding_2
execute if score @s Groved.BreedNum matches 3.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run advancement grant @s only mrt_supports:groved/love_is_in_the_air breeding_3
execute if score @s Groved.BreedNum matches 4.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run advancement grant @s only mrt_supports:groved/love_is_in_the_air breeding_4
execute if score @s Groved.BreedNum matches 5.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run advancement grant @s only mrt_supports:groved/love_is_in_the_air breeding_5
execute if score @s Groved.BreedNum matches 6.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run advancement grant @s only mrt_supports:groved/love_is_in_the_air breeding_6
execute if score @s Groved.BreedNum matches 1.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run tag @s add Supports.Groved.Adv.LoveInAirTracking
execute if score @s Groved.BreedNum matches 6.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run advancement grant @s only mrt_supports:groved/root root
execute if score @s Groved.BreedNum matches 6.. unless entity @s[tag=Supports.Groved.Adv.LoveInAir] run tag @s add Supports.Groved.Adv.LoveInAir
advancement revoke @s only mrt_supports:detectors/groved/bred_inside

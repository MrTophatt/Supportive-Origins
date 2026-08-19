# Read current breeding cooldown
scoreboard players set @s Groved.BreedAge 0
execute store result score @s Groved.BreedAge run data get entity @s Age

# Change cooldown to 200 ticks
execute if score @s Groved.BreedAge matches 201.. run data modify entity @s Age set value 200
execute if score @s Groved.BreedAge matches 201.. run function mrt_supports:groved/sanctuary/effects/breeding_reduced

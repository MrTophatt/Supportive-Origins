# Remember an immature crop before Life Blessing bonemeals this block.
scoreboard players set $CropType Groved.AdvTmp 0
execute if block ~ ~ ~ minecraft:wheat unless block ~ ~ ~ minecraft:wheat[age=7] run scoreboard players set $CropType Groved.AdvTmp 1
execute if block ~ ~ ~ minecraft:carrots unless block ~ ~ ~ minecraft:carrots[age=7] run scoreboard players set $CropType Groved.AdvTmp 2
execute if block ~ ~ ~ minecraft:potatoes unless block ~ ~ ~ minecraft:potatoes[age=7] run scoreboard players set $CropType Groved.AdvTmp 3
execute if block ~ ~ ~ minecraft:beetroots unless block ~ ~ ~ minecraft:beetroots[age=3] run scoreboard players set $CropType Groved.AdvTmp 4
execute if block ~ ~ ~ minecraft:melon_stem unless block ~ ~ ~ minecraft:melon_stem[age=7] run scoreboard players set $CropType Groved.AdvTmp 5
execute if block ~ ~ ~ minecraft:pumpkin_stem unless block ~ ~ ~ minecraft:pumpkin_stem[age=7] run scoreboard players set $CropType Groved.AdvTmp 6
execute if block ~ ~ ~ minecraft:cocoa unless block ~ ~ ~ minecraft:cocoa[age=2] run scoreboard players set $CropType Groved.AdvTmp 7
execute if block ~ ~ ~ minecraft:sweet_berry_bush unless block ~ ~ ~ minecraft:sweet_berry_bush[age=3] run scoreboard players set $CropType Groved.AdvTmp 8
execute if block ~ ~ ~ minecraft:torchflower_crop unless block ~ ~ ~ minecraft:torchflower_crop[age=1] run scoreboard players set $CropType Groved.AdvTmp 9
execute if block ~ ~ ~ minecraft:pitcher_crop[half=lower] unless block ~ ~ ~ minecraft:pitcher_crop[age=4,half=lower] run scoreboard players set $CropType Groved.AdvTmp 10
function #mrt_supports:fruitful_harvest/prepare_modded_crops

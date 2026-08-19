# Credit only a crop that changed from immature to fully grown during this bonemeal action.
execute if score $CropType Groved.AdvTmp matches 1 if block ~ ~ ~ minecraft:wheat[age=7] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 2 if block ~ ~ ~ minecraft:carrots[age=7] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 3 if block ~ ~ ~ minecraft:potatoes[age=7] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 4 if block ~ ~ ~ minecraft:beetroots[age=3] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 5 if block ~ ~ ~ minecraft:melon_stem[age=7] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 5 if block ~ ~ ~ minecraft:attached_melon_stem as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 6 if block ~ ~ ~ minecraft:pumpkin_stem[age=7] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 6 if block ~ ~ ~ minecraft:attached_pumpkin_stem as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 7 if block ~ ~ ~ minecraft:cocoa[age=2] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 8 if block ~ ~ ~ minecraft:sweet_berry_bush[age=3] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 9 if block ~ ~ ~ minecraft:torchflower_crop[age=1] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
execute if score $CropType Groved.AdvTmp matches 10 if block ~ ~ ~ minecraft:pitcher_crop[age=4,half=lower] as @p[tag=Supports.Groved.LifeBlessingTracking,distance=..6] run function mrt_supports:groved/advancements/life-blessing/crops/record
function #mrt_supports:fruitful_harvest/modded_crops
scoreboard players set $CropType Groved.AdvTmp 0

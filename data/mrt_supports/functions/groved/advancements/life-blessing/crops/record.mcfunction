# Count each built-in crop type only once.
execute if score $CropType Groved.AdvTmp matches 1 unless entity @s[tag=Supports.Groved.Crop.Wheat] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 1 run tag @s add Supports.Groved.Crop.Wheat
execute if score $CropType Groved.AdvTmp matches 2 unless entity @s[tag=Supports.Groved.Crop.Carrots] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 2 run tag @s add Supports.Groved.Crop.Carrots
execute if score $CropType Groved.AdvTmp matches 3 unless entity @s[tag=Supports.Groved.Crop.Potatoes] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 3 run tag @s add Supports.Groved.Crop.Potatoes
execute if score $CropType Groved.AdvTmp matches 4 unless entity @s[tag=Supports.Groved.Crop.Beetroots] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 4 run tag @s add Supports.Groved.Crop.Beetroots
execute if score $CropType Groved.AdvTmp matches 5 unless entity @s[tag=Supports.Groved.Crop.MelonStem] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 5 run tag @s add Supports.Groved.Crop.MelonStem
execute if score $CropType Groved.AdvTmp matches 6 unless entity @s[tag=Supports.Groved.Crop.PumpkinStem] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 6 run tag @s add Supports.Groved.Crop.PumpkinStem
execute if score $CropType Groved.AdvTmp matches 7 unless entity @s[tag=Supports.Groved.Crop.Cocoa] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 7 run tag @s add Supports.Groved.Crop.Cocoa
execute if score $CropType Groved.AdvTmp matches 8 unless entity @s[tag=Supports.Groved.Crop.SweetBerries] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 8 run tag @s add Supports.Groved.Crop.SweetBerries
execute if score $CropType Groved.AdvTmp matches 9 unless entity @s[tag=Supports.Groved.Crop.Torchflower] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 9 run tag @s add Supports.Groved.Crop.Torchflower
execute if score $CropType Groved.AdvTmp matches 10 unless entity @s[tag=Supports.Groved.Crop.Pitcher] run function mrt_supports:groved/advancements/life-blessing/crops/add-unique
execute if score $CropType Groved.AdvTmp matches 10 run tag @s add Supports.Groved.Crop.Pitcher

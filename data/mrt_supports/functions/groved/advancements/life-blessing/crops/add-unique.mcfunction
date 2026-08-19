# Compatibility handlers call this once after verifying their own unseen, fully-grown crop type.
execute unless entity @s[tag=Supports.Groved.Adv.FruitfulHarvest] run scoreboard players add @s Groved.CropCount 1
execute unless entity @s[tag=Supports.Groved.Adv.FruitfulHarvest] run function mrt_supports:groved/advancements/life-blessing/crops/award-progress

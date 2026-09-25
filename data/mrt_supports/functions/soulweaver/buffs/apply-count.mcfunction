# Rebuild the buffs only when the armor-stand count actually changes.
scoreboard players add @s SW.BuffLevel 0
tag @s remove Supports.Soulweaver.BuffDirty
execute unless entity @s[tag=Supports.Soulweaver.BuffInitialized] run tag @s add Supports.Soulweaver.BuffDirty
execute unless score @s SW.BuffLevel = $BuffCount SW.LinkCount run tag @s add Supports.Soulweaver.BuffDirty
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] run function mrt_supports:soulweaver/buffs/clear
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] if score $BuffCount SW.LinkCount matches 1 run apoli:power grant @s mrt_supports:soulweaver/buffs/1link mrt_supports:soulweaver
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] if score $BuffCount SW.LinkCount matches 2 run apoli:power grant @s mrt_supports:soulweaver/buffs/2link mrt_supports:soulweaver
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] if score $BuffCount SW.LinkCount matches 3 run apoli:power grant @s mrt_supports:soulweaver/buffs/3link mrt_supports:soulweaver
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] if score $BuffCount SW.LinkCount matches 4 run apoli:power grant @s mrt_supports:soulweaver/buffs/4link mrt_supports:soulweaver
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] if score $BuffCount SW.LinkCount matches 5.. run apoli:power grant @s mrt_supports:soulweaver/buffs/5link mrt_supports:soulweaver
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] run scoreboard players operation @s SW.BuffLevel = $BuffCount SW.LinkCount
scoreboard players operation @s SW.StrandLinks = $BuffCount SW.LinkCount
execute if entity @s[tag=Supports.Soulweaver.BuffDirty] run tag @s add Supports.Soulweaver.BuffInitialized
tag @s remove Supports.Soulweaver.BuffDirty

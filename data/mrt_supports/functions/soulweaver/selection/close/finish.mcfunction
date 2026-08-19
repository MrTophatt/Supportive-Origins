execute if score $BestLink Supports.SW.LinkID matches 0.. as @e[tag=Supports.Soulweaver.LinkedEntity] if score @s Supports.SW.ID = $Selecting Supports.SW.ID if score @s Supports.SW.LinkID = $BestLink Supports.SW.LinkID run scoreboard players operation @s SW.Selected = $Selecting Supports.SW.ID
execute if score $BestLink Supports.SW.LinkID matches 0.. run tag @s add Supports.Soulweaver.SelectionHasTarget
execute as @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run kill @s
function mrt_supports:soulweaver/selection/close/reset-scratch

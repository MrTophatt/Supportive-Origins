scoreboard players operation $Selecting Supports.SW.ID = @s Supports.SW.ID
execute as @e[type=minecraft:block_display,tag=Supports.Soulweaver.LinkIndicator] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run kill @s
execute as @e[type=minecraft:marker,tag=Supports.Soulweaver.IndicatorMoveTarget] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run kill @s
execute as @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run kill @s
execute as @e[tag=Supports.Soulweaver.LinkedEntity] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run tag @s remove Supports.Soulweaver.LinkedFar
execute as @e[tag=Supports.Soulweaver.SelectionCandidate] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run tag @s remove Supports.Soulweaver.SelectionCandidate
execute as @e[type=minecraft:marker,tag=Supports.Soulweaver.IndicatorRayCandidate] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run tag @s remove Supports.Soulweaver.IndicatorRayCandidate
execute as @e[scores={SW.Selected=1..}] if score @s SW.Selected = $Selecting Supports.SW.ID run scoreboard players reset @s SW.Selected
tag @s remove Supports.Soulweaver.IndicatorRayHit
tag @s remove Supports.Soulweaver.SelectionHasTarget
function mrt_supports:soulweaver/selection/close/reset-scratch

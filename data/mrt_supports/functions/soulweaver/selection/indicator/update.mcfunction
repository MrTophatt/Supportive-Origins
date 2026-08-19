# Reuse one display/proxy pair for this owner and link.
tag @e[type=minecraft:block_display,tag=Supports.Soulweaver.CurrentIndicator] remove Supports.Soulweaver.CurrentIndicator
tag @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorMoveTarget] remove Supports.Soulweaver.CurrentIndicatorMoveTarget
execute as @e[type=minecraft:block_display,tag=Supports.Soulweaver.LinkIndicator] if score @s Supports.SW.ID = $IndicatorOwner Supports.SW.ID if score @s Supports.SW.LinkID = $IndicatorLink Supports.SW.LinkID run tag @s add Supports.Soulweaver.CurrentIndicator
execute as @e[type=minecraft:marker,tag=Supports.Soulweaver.IndicatorMoveTarget] if score @s Supports.SW.ID = $IndicatorOwner Supports.SW.ID if score @s Supports.SW.LinkID = $IndicatorLink Supports.SW.LinkID run tag @s add Supports.Soulweaver.CurrentIndicatorMoveTarget

execute unless entity @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorMoveTarget,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["Supports.Soulweaver.IndicatorMoveTarget","Supports.Soulweaver.CurrentIndicatorMoveTarget","Supports.Soulweaver.IndicatorFar"]}
execute unless entity @e[type=minecraft:block_display,tag=Supports.Soulweaver.CurrentIndicator,limit=1] run summon minecraft:block_display ~ ~ ~ {Tags:["Supports.Soulweaver.LinkIndicator","Supports.Soulweaver.CurrentIndicator","Supports.Soulweaver.IndicatorFar"],Invulnerable:1b,Rotation:[0.0f,0.0f],block_state:{Name:"minecraft:light_blue_stained_glass"},billboard:"fixed",interpolation_duration:0,start_interpolation:0,view_range:0.5f,shadow_radius:0.0f,shadow_strength:0.0f,transformation:{translation:[-0.15f,-0.15f,-0.15f],scale:[0.3f,0.3f,0.3f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

scoreboard players operation @e[type=minecraft:block_display,tag=Supports.Soulweaver.CurrentIndicator,limit=1] Supports.SW.ID = $IndicatorOwner Supports.SW.ID
scoreboard players operation @e[type=minecraft:block_display,tag=Supports.Soulweaver.CurrentIndicator,limit=1] Supports.SW.LinkID = $IndicatorLink Supports.SW.LinkID
scoreboard players operation @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorMoveTarget,limit=1] Supports.SW.ID = $IndicatorOwner Supports.SW.ID
scoreboard players operation @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorMoveTarget,limit=1] Supports.SW.LinkID = $IndicatorLink Supports.SW.LinkID

tp @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorMoveTarget,limit=1] ~ ~ ~
tp @e[type=minecraft:block_display,tag=Supports.Soulweaver.CurrentIndicator,limit=1] ~ ~ ~ facing entity @s eyes
tag @e[type=minecraft:block_display,tag=Supports.Soulweaver.CurrentIndicator,limit=1] add Supports.Soulweaver.IndicatorUpdated
tag @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorMoveTarget,limit=1] add Supports.Soulweaver.IndicatorUpdated
tag @e[type=minecraft:block_display,tag=Supports.Soulweaver.CurrentIndicator,limit=1] add Supports.Soulweaver.IndicatorFar
tag @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorMoveTarget,limit=1] add Supports.Soulweaver.IndicatorFar

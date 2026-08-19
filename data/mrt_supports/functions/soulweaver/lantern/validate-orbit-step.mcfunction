function mrt_supports:soulweaver/lantern/check-orbit-space

execute if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run scoreboard players operation @s SW.LanternSafeAngle = @s SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run scoreboard players operation @s SW.LanternSafeBlend = @s SW.LanternChestBlend
execute if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s remove Supports.Soulweaver.LanternOrbitEscaping

# If a block appears on the lantern, let it orbit out instead of rolling back forever.
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] if entity @s[tag=Supports.Soulweaver.LanternOrbitEscaping] run scoreboard players operation @s SW.LanternSafeAngle = @s SW.LanternAngle

# This rollback is fiddly as hell but it tests the last safe angle before choosing another arc.
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] unless entity @s[tag=Supports.Soulweaver.LanternOrbitEscaping] run tag @s add Supports.Soulweaver.LanternOrbitStepBlocked
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run scoreboard players operation @s SW.LanternProposedAngle = @s SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run scoreboard players operation @s SW.LanternVelDiff -= @s SW.LanternSafeAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] if score @s SW.LanternVelDiff matches 18001.. run scoreboard players remove @s SW.LanternVelDiff 36000
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] if score @s SW.LanternVelDiff matches ..-18001 run scoreboard players add @s SW.LanternVelDiff 36000
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run scoreboard players operation @s SW.LanternAngle = @s SW.LanternSafeAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run scoreboard players operation @s SW.LanternChestBlend = @s SW.LanternSafeBlend
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run function mrt_supports:soulweaver/lantern/check-orbit-space

# Reverse around the player when one arc is blocked, never cut inward through them.
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=Supports.Soulweaver.LanternOrbitForceNegative] if score @s SW.LanternVelDiff matches ..-1 run tag @s add Supports.Soulweaver.LanternOrbitBothRoutesBlocked
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=Supports.Soulweaver.LanternOrbitForcePositive] if score @s SW.LanternVelDiff matches 1.. run tag @s add Supports.Soulweaver.LanternOrbitBothRoutesBlocked
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run tag @s remove Supports.Soulweaver.LanternOrbitForceNegative
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked] run tag @s remove Supports.Soulweaver.LanternOrbitForcePositive
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=!Supports.Soulweaver.LanternOrbitBothRoutesBlocked] if score @s SW.LanternVelDiff matches 1.. run tag @s add Supports.Soulweaver.LanternOrbitForceNegative
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=!Supports.Soulweaver.LanternOrbitBothRoutesBlocked] if score @s SW.LanternVelDiff matches ..-1 run tag @s add Supports.Soulweaver.LanternOrbitForcePositive
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=!Supports.Soulweaver.LanternOrbitBothRoutesBlocked] if score @s SW.LanternVelDiff matches 0 if score @s SW.LanternDelta matches 1.. run tag @s add Supports.Soulweaver.LanternOrbitForceNegative
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=!Supports.Soulweaver.LanternOrbitBothRoutesBlocked] if score @s SW.LanternVelDiff matches 0 if score @s SW.LanternDelta matches ..-1 run tag @s add Supports.Soulweaver.LanternOrbitForcePositive

# The saved spot is blocked too, so accept circular motion until the lantern clears.
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=!Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternOrbitEscaping
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=!Supports.Soulweaver.LanternFollowSpotSafe] run scoreboard players operation @s SW.LanternAngle = @s SW.LanternProposedAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=!Supports.Soulweaver.LanternFollowSpotSafe] run scoreboard players operation @s SW.LanternSafeAngle = @s SW.LanternProposedAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitStepBlocked,tag=!Supports.Soulweaver.LanternFollowSpotSafe] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s SW.LanternAngle

tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
tag @s remove Supports.Soulweaver.LanternOrbitStepBlocked
tag @s remove Supports.Soulweaver.LanternOrbitBothRoutesBlocked

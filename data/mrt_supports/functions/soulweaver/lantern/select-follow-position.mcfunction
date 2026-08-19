# Runs as the carrier at the Soul Weaver, using player yaw only.
tag @s remove Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
tag @s remove Supports.Soulweaver.LanternFollowLeft
tag @s remove Supports.Soulweaver.LanternFollowRight
tag @s remove Supports.Soulweaver.LanternFollowBack
tag @s remove Supports.Soulweaver.LanternFollowFront
tag @s remove Supports.Soulweaver.LanternFollowChest
tag @s remove Supports.Soulweaver.LanternPreferredLeft
tag @s remove Supports.Soulweaver.LanternPreferCurrentBack
tag @s remove Supports.Soulweaver.LanternPreferCurrentFront
execute if entity @s[tag=Supports.Soulweaver.LanternLeftShoulder] run tag @s add Supports.Soulweaver.LanternPreferredLeft

scoreboard players operation @s SW.LanternDesiredVel = @s SW.LanternTargetAngle
execute if entity @s[tag=Supports.Soulweaver.LanternPreferredLeft] run scoreboard players operation @s SW.LanternDesiredVel -= #LanternShoulderArc SW.LanternAngle
execute if score @s SW.LanternDesiredVel matches 18001.. run scoreboard players remove @s SW.LanternDesiredVel 36000
execute if score @s SW.LanternDesiredVel matches ..-18001 run scoreboard players add @s SW.LanternDesiredVel 36000

# A 180-degree turn swaps back/front labels without moving the lantern in world space.
scoreboard players operation @s SW.LanternProposedAngle = @s SW.LanternDesiredVel
scoreboard players operation @s SW.LanternProposedAngle -= #LanternFrontArc SW.LanternAngle
execute if score @s SW.LanternProposedAngle matches 18001.. run scoreboard players remove @s SW.LanternProposedAngle 36000
execute if score @s SW.LanternProposedAngle matches ..-18001 run scoreboard players add @s SW.LanternProposedAngle 36000
scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternProposedAngle
scoreboard players operation @s SW.LanternVelDiff -= @s SW.LanternAngle
execute if score @s SW.LanternVelDiff matches 18001.. run scoreboard players remove @s SW.LanternVelDiff 36000
execute if score @s SW.LanternVelDiff matches ..-18001 run scoreboard players add @s SW.LanternVelDiff 36000
execute if score @s SW.LanternPathMode matches 2 if score @s SW.LanternVelDiff matches -300..300 run tag @s add Supports.Soulweaver.LanternPreferCurrentFront

scoreboard players operation @s SW.LanternProposedAngle = @s SW.LanternDesiredVel
scoreboard players operation @s SW.LanternProposedAngle += #LanternHalfShoulderArc SW.LanternAngle
execute if score @s SW.LanternProposedAngle matches 18001.. run scoreboard players remove @s SW.LanternProposedAngle 36000
execute if score @s SW.LanternProposedAngle matches ..-18001 run scoreboard players add @s SW.LanternProposedAngle 36000
scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternProposedAngle
scoreboard players operation @s SW.LanternVelDiff -= @s SW.LanternAngle
execute if score @s SW.LanternVelDiff matches 18001.. run scoreboard players remove @s SW.LanternVelDiff 36000
execute if score @s SW.LanternVelDiff matches ..-18001 run scoreboard players add @s SW.LanternVelDiff 36000
execute if score @s SW.LanternPathMode matches 3 if score @s SW.LanternVelDiff matches -300..300 run tag @s add Supports.Soulweaver.LanternPreferCurrentBack

execute if entity @s[tag=Supports.Soulweaver.LanternPreferredLeft] positioned ^0.65 ^1.45 ^-0.35 run function mrt_supports:soulweaver/lantern/check-follow-space
execute unless entity @s[tag=Supports.Soulweaver.LanternPreferredLeft] positioned ^-0.65 ^1.45 ^-0.35 run function mrt_supports:soulweaver/lantern/check-follow-space
execute if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=Supports.Soulweaver.LanternPreferredLeft] run tag @s add Supports.Soulweaver.LanternFollowLeft
execute if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=!Supports.Soulweaver.LanternPreferredLeft] run tag @s add Supports.Soulweaver.LanternFollowRight
execute if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternFollowSpotSafe

# Keep the preferred shoulder if it fits, then try the other one.
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternPreferredLeft] positioned ^-0.65 ^1.45 ^-0.35 run function mrt_supports:soulweaver/lantern/check-follow-space
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] unless entity @s[tag=Supports.Soulweaver.LanternPreferredLeft] positioned ^0.65 ^1.45 ^-0.35 run function mrt_supports:soulweaver/lantern/check-follow-space
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=Supports.Soulweaver.LanternPreferredLeft] run tag @s add Supports.Soulweaver.LanternFollowRight
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe,tag=!Supports.Soulweaver.LanternPreferredLeft] run tag @s add Supports.Soulweaver.LanternFollowLeft
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternFollowSpotSafe

# Preserve a valid back or front spot after a sudden half turn.
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternPreferCurrentFront] positioned ^0 ^1.45 ^0.75 run function mrt_supports:soulweaver/lantern/check-follow-space
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternPreferCurrentFront,tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowFront
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternPreferCurrentFront,tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternPreferCurrentBack] positioned ^0 ^1.45 ^-0.75 run function mrt_supports:soulweaver/lantern/check-follow-space
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternPreferCurrentBack,tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowBack
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternPreferCurrentBack,tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternFollowSpotSafe

execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] positioned ^0 ^1.45 ^-0.75 run function mrt_supports:soulweaver/lantern/check-follow-space
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowBack
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternFollowSpotSafe

execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] positioned ^0 ^1.45 ^0.75 run function mrt_supports:soulweaver/lantern/check-follow-space
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowFront
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] if entity @s[tag=Supports.Soulweaver.LanternFollowSpotSafe] run tag @s add Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternFollowSpotSafe

# Everything is blocked, so tuck the lantern into the chest.
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] run tag @s add Supports.Soulweaver.LanternFollowChest
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowSpotFound] run tag @s add Supports.Soulweaver.LanternFollowSpotFound

# Unravel deliberately tucks the lantern before releasing its projectile.
execute if entity @s[tag=Supports.Soulweaver.UnravelTuck] run tag @s remove Supports.Soulweaver.LanternFollowLeft
execute if entity @s[tag=Supports.Soulweaver.UnravelTuck] run tag @s remove Supports.Soulweaver.LanternFollowRight
execute if entity @s[tag=Supports.Soulweaver.UnravelTuck] run tag @s remove Supports.Soulweaver.LanternFollowBack
execute if entity @s[tag=Supports.Soulweaver.UnravelTuck] run tag @s remove Supports.Soulweaver.LanternFollowFront
execute if entity @s[tag=Supports.Soulweaver.UnravelTuck] run tag @s add Supports.Soulweaver.LanternFollowChest

# Convert the chosen local spot back into the angle used by the orbit controller.
scoreboard players operation @s SW.LanternTargetAngle = @s SW.LanternDesiredVel
execute if entity @s[tag=Supports.Soulweaver.LanternFollowLeft] run scoreboard players operation @s SW.LanternTargetAngle += #LanternShoulderArc SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternFollowBack] run scoreboard players operation @s SW.LanternTargetAngle += #LanternHalfShoulderArc SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternFollowFront] run scoreboard players operation @s SW.LanternTargetAngle -= #LanternFrontArc SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternFollowChest] run scoreboard players operation @s SW.LanternTargetAngle -= #LanternFrontArc SW.LanternAngle
execute if score @s SW.LanternTargetAngle matches 18001.. run scoreboard players remove @s SW.LanternTargetAngle 36000
execute if score @s SW.LanternTargetAngle matches ..-18001 run scoreboard players add @s SW.LanternTargetAngle 36000

execute if entity @s[tag=Supports.Soulweaver.LanternFollowLeft] run tag @s add Supports.Soulweaver.LanternLeftShoulder
execute if entity @s[tag=Supports.Soulweaver.LanternFollowRight] run tag @s remove Supports.Soulweaver.LanternLeftShoulder

execute if entity @s[tag=Supports.Soulweaver.LanternFollowRight] run scoreboard players set @s SW.LanternFollowMode 0
execute if entity @s[tag=Supports.Soulweaver.LanternFollowLeft] run scoreboard players set @s SW.LanternFollowMode 1
execute if entity @s[tag=Supports.Soulweaver.LanternFollowBack] run scoreboard players set @s SW.LanternFollowMode 2
execute if entity @s[tag=Supports.Soulweaver.LanternFollowFront] run scoreboard players set @s SW.LanternFollowMode 3
execute if entity @s[tag=Supports.Soulweaver.LanternFollowChest] run scoreboard players set @s SW.LanternFollowMode 4

scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternTargetAngle
scoreboard players operation @s SW.LanternVelDiff -= @s SW.LanternAngle
execute if score @s SW.LanternVelDiff matches 18001.. run scoreboard players remove @s SW.LanternVelDiff 36000
execute if score @s SW.LanternVelDiff matches ..-18001 run scoreboard players add @s SW.LanternVelDiff 36000
execute if score @s SW.LanternFollowMode matches 2 if score @s SW.LanternPathMode matches 3 if score @s SW.LanternVelDiff matches -100..100 run scoreboard players set @s SW.LanternVel 0
execute if score @s SW.LanternFollowMode matches 3 if score @s SW.LanternPathMode matches 2 if score @s SW.LanternVelDiff matches -100..100 run scoreboard players set @s SW.LanternVel 0

# Leaving the contracted chest uses its own accelerated radial transition.
execute if score @s SW.LanternFollowMode matches 4 run tag @s remove Supports.Soulweaver.LanternChestExit
execute if score @s SW.LanternFollowMode matches 4 run tag @s remove Supports.Soulweaver.LanternOrbitEscaping
execute unless score @s SW.LanternFollowMode matches 4 if score @s SW.LanternPathMode matches 4 if score @s SW.LanternChestBlend matches 1.. run tag @s add Supports.Soulweaver.LanternChestExit
execute unless score @s SW.LanternFollowMode = @s SW.LanternPathMode run tag @s remove Supports.Soulweaver.LanternOrbitForceNegative
execute unless score @s SW.LanternFollowMode = @s SW.LanternPathMode run tag @s remove Supports.Soulweaver.LanternOrbitForcePositive
scoreboard players operation @s SW.LanternPathMode = @s SW.LanternFollowMode

tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
tag @s remove Supports.Soulweaver.LanternFollowSpotFound
tag @s remove Supports.Soulweaver.LanternPreferredLeft
tag @s remove Supports.Soulweaver.LanternPreferCurrentBack
tag @s remove Supports.Soulweaver.LanternPreferCurrentFront

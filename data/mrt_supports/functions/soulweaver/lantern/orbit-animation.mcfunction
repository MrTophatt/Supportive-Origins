# Start on the current target so an existing anchor does not jump on initialization.
execute unless entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternAngle = @s SW.LanternTargetAngle
execute unless entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players set @s SW.LanternVel 0
tag @s add Supports.Soulweaver.LanternOrbitInitialized
scoreboard players add @s SW.LanternChestBlend 0
execute unless entity @s[tag=Supports.Soulweaver.LanternOrbitSafeInitialized] run scoreboard players operation @s SW.LanternSafeAngle = @s SW.LanternAngle
execute unless entity @s[tag=Supports.Soulweaver.LanternOrbitSafeInitialized] run scoreboard players operation @s SW.LanternSafeBlend = @s SW.LanternChestBlend
tag @s add Supports.Soulweaver.LanternOrbitSafeInitialized

# Wrap the yaw error into the shortest signed route around the player.
scoreboard players operation @s SW.LanternDelta = @s SW.LanternTargetAngle
scoreboard players operation @s SW.LanternDelta -= @s SW.LanternAngle
execute if score @s SW.LanternDelta matches 18001.. run scoreboard players remove @s SW.LanternDelta 36000
execute if score @s SW.LanternDelta matches ..-18001 run scoreboard players add @s SW.LanternDelta 36000

# A forced direction is how collision recovery takes the long clear arc.
execute if score @s SW.LanternDelta matches -100..100 run tag @s remove Supports.Soulweaver.LanternOrbitForceNegative
execute if score @s SW.LanternDelta matches -100..100 run tag @s remove Supports.Soulweaver.LanternOrbitForcePositive
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitForceNegative] if score @s SW.LanternDelta matches 1.. run scoreboard players remove @s SW.LanternDelta 36000
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitForcePositive] if score @s SW.LanternDelta matches ..-1 run scoreboard players add @s SW.LanternDelta 36000

scoreboard players operation @s SW.LanternDesiredVel = @s SW.LanternDelta
scoreboard players operation @s SW.LanternDesiredVel /= #LanternSlowDiv SW.LanternAngle
execute if score @s SW.LanternDesiredVel > #LanternMaxVel SW.LanternAngle run scoreboard players operation @s SW.LanternDesiredVel = #LanternMaxVel SW.LanternAngle
execute if score @s SW.LanternDesiredVel < #LanternMinVel SW.LanternAngle run scoreboard players operation @s SW.LanternDesiredVel = #LanternMinVel SW.LanternAngle

# Chest exit owns radial movement, so pause orbit velocity until it is done.
execute if entity @s[tag=Supports.Soulweaver.LanternChestExit] run scoreboard players set @s SW.LanternDesiredVel 0
scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternDesiredVel
scoreboard players operation @s SW.LanternVelDiff -= @s SW.LanternVel
execute if score @s SW.LanternVelDiff > #LanternAccel SW.LanternAngle run scoreboard players operation @s SW.LanternVelDiff = #LanternAccel SW.LanternAngle
execute if score @s SW.LanternVelDiff < #LanternNegAccel SW.LanternAngle run scoreboard players operation @s SW.LanternVelDiff = #LanternNegAccel SW.LanternAngle
scoreboard players operation @s SW.LanternVel += @s SW.LanternVelDiff
execute if score @s SW.LanternVel > #LanternMaxVel SW.LanternAngle run scoreboard players operation @s SW.LanternVel = #LanternMaxVel SW.LanternAngle
execute if score @s SW.LanternVel < #LanternMinVel SW.LanternAngle run scoreboard players operation @s SW.LanternVel = #LanternMinVel SW.LanternAngle

scoreboard players operation @s SW.LanternAngle += @s SW.LanternVel
execute if score @s SW.LanternAngle matches 18001.. run scoreboard players remove @s SW.LanternAngle 36000
execute if score @s SW.LanternAngle matches ..-18001 run scoreboard players add @s SW.LanternAngle 36000
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s SW.LanternAngle

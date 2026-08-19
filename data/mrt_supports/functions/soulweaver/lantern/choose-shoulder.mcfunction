# After initialization, use whichever shoulder needs the shorter trip around the player.

execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternDelta = @s SW.LanternTargetAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternDelta -= @s SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] if score @s SW.LanternDelta matches 18001.. run scoreboard players remove @s SW.LanternDelta 36000
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] if score @s SW.LanternDelta matches ..-18001 run scoreboard players add @s SW.LanternDelta 36000
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternDelta *= @s SW.LanternDelta

# Compare squared angle distances so this does not need a square root.
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternDesiredVel = @s SW.LanternTargetAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternDesiredVel += #LanternShoulderArc SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternDesiredVel -= @s SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] if score @s SW.LanternDesiredVel matches 18001.. run scoreboard players remove @s SW.LanternDesiredVel 36000
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] if score @s SW.LanternDesiredVel matches ..-18001 run scoreboard players add @s SW.LanternDesiredVel 36000
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] run scoreboard players operation @s SW.LanternDesiredVel *= @s SW.LanternDesiredVel

tag @s remove Supports.Soulweaver.LanternLeftShoulder
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] if score @s SW.LanternDesiredVel < @s SW.LanternDelta run tag @s add Supports.Soulweaver.LanternLeftShoulder
execute if entity @s[tag=Supports.Soulweaver.LanternOrbitInitialized] if score @s SW.LanternDesiredVel < @s SW.LanternDelta run scoreboard players operation @s SW.LanternTargetAngle += #LanternShoulderArc SW.LanternAngle
execute if score @s SW.LanternTargetAngle matches 18001.. run scoreboard players remove @s SW.LanternTargetAngle 36000
execute if score @s SW.LanternTargetAngle matches ..-18001 run scoreboard players add @s SW.LanternTargetAngle 36000

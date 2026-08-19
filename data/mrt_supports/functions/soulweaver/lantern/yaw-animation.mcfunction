execute unless entity @s[tag=Supports.Soulweaver.LanternFacingInitializedV2] store result score @s SW.LanternAngle run data get entity @s Rotation[0] 100
execute unless entity @s[tag=Supports.Soulweaver.LanternFacingInitializedV2] run scoreboard players set @s SW.LanternVel 0
tag @s add Supports.Soulweaver.LanternFacingInitializedV2

scoreboard players operation @s SW.LanternDelta = @s SW.LanternTargetAngle
scoreboard players operation @s SW.LanternDelta -= @s SW.LanternAngle
execute if score @s SW.LanternDelta matches 18001.. run scoreboard players remove @s SW.LanternDelta 36000
execute if score @s SW.LanternDelta matches ..-18001 run scoreboard players add @s SW.LanternDelta 36000

scoreboard players operation @s SW.LanternDesiredVel = @s SW.LanternDelta
scoreboard players operation @s SW.LanternDesiredVel /= #LanternSlowDiv SW.LanternAngle
execute if score @s SW.LanternDesiredVel > #LanternYawMaxVel SW.LanternAngle run scoreboard players operation @s SW.LanternDesiredVel = #LanternYawMaxVel SW.LanternAngle
execute if score @s SW.LanternDesiredVel < #LanternYawMinVel SW.LanternAngle run scoreboard players operation @s SW.LanternDesiredVel = #LanternYawMinVel SW.LanternAngle

scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternDesiredVel
scoreboard players operation @s SW.LanternVelDiff -= @s SW.LanternVel
execute if score @s SW.LanternVel matches ..-1 if score @s SW.LanternVelDiff > #LanternYawBrake SW.LanternAngle run scoreboard players operation @s SW.LanternVelDiff = #LanternYawBrake SW.LanternAngle
execute unless score @s SW.LanternVel matches ..-1 if score @s SW.LanternVelDiff > #LanternAccel SW.LanternAngle run scoreboard players operation @s SW.LanternVelDiff = #LanternAccel SW.LanternAngle
execute if score @s SW.LanternVel matches 1.. if score @s SW.LanternVelDiff < #LanternYawNegBrake SW.LanternAngle run scoreboard players operation @s SW.LanternVelDiff = #LanternYawNegBrake SW.LanternAngle
execute unless score @s SW.LanternVel matches 1.. if score @s SW.LanternVelDiff < #LanternNegAccel SW.LanternAngle run scoreboard players operation @s SW.LanternVelDiff = #LanternNegAccel SW.LanternAngle
scoreboard players operation @s SW.LanternVel += @s SW.LanternVelDiff
execute if score @s SW.LanternVel > #LanternYawMaxVel SW.LanternAngle run scoreboard players operation @s SW.LanternVel = #LanternYawMaxVel SW.LanternAngle
execute if score @s SW.LanternVel < #LanternYawMinVel SW.LanternAngle run scoreboard players operation @s SW.LanternVel = #LanternYawMinVel SW.LanternAngle

scoreboard players operation @s SW.LanternAngle += @s SW.LanternVel
execute if score @s SW.LanternAngle matches 18001.. run scoreboard players remove @s SW.LanternAngle 36000
execute if score @s SW.LanternAngle matches ..-18001 run scoreboard players add @s SW.LanternAngle 36000
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s SW.LanternAngle

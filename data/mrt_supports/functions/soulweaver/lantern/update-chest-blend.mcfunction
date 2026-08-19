# Radial velocity accelerates separately from yaw so chest transitions stay smooth.
scoreboard players add @s SW.LanternChestBlend 0
scoreboard players add @s SW.LanternRadialVel 0

execute if entity @s[tag=Supports.Soulweaver.LanternFollowChest] unless entity @s[tag=Supports.Soulweaver.LanternRadialIn] run scoreboard players set @s SW.LanternRadialVel 0
execute if entity @s[tag=Supports.Soulweaver.LanternFollowChest] run tag @s add Supports.Soulweaver.LanternRadialIn
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowChest] if entity @s[tag=Supports.Soulweaver.LanternRadialIn] run scoreboard players set @s SW.LanternRadialVel 0
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowChest] run tag @s remove Supports.Soulweaver.LanternRadialIn

execute if entity @s[tag=Supports.Soulweaver.LanternFollowChest] if score @s SW.LanternChestBlend matches ..9 if score @s SW.LanternRadialVel matches ..1 run scoreboard players add @s SW.LanternRadialVel 1
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowChest] if score @s SW.LanternChestBlend matches 1.. if score @s SW.LanternRadialVel matches ..1 run scoreboard players add @s SW.LanternRadialVel 1
execute if score @s SW.LanternRadialVel matches 3.. run scoreboard players set @s SW.LanternRadialVel 2

execute if entity @s[tag=Supports.Soulweaver.LanternFollowChest] if score @s SW.LanternChestBlend matches ..9 run scoreboard players operation @s SW.LanternChestBlend += @s SW.LanternRadialVel
execute unless entity @s[tag=Supports.Soulweaver.LanternFollowChest] if score @s SW.LanternChestBlend matches 1.. run scoreboard players operation @s SW.LanternChestBlend -= @s SW.LanternRadialVel
execute if score @s SW.LanternChestBlend matches 11.. run scoreboard players set @s SW.LanternChestBlend 10
execute if score @s SW.LanternChestBlend matches ..-1 run scoreboard players set @s SW.LanternChestBlend 0

# Once fully expanded, hand the lantern back to the normal orbit controller.
execute if entity @s[tag=Supports.Soulweaver.LanternChestExit] if score @s SW.LanternChestBlend matches 0 run scoreboard players operation @s SW.LanternAngle = @s SW.LanternTargetAngle
execute if entity @s[tag=Supports.Soulweaver.LanternChestExit] if score @s SW.LanternChestBlend matches 0 run scoreboard players operation @s SW.LanternSafeAngle = @s SW.LanternTargetAngle
execute if entity @s[tag=Supports.Soulweaver.LanternChestExit] if score @s SW.LanternChestBlend matches 0 run scoreboard players set @s SW.LanternVel 0
execute if entity @s[tag=Supports.Soulweaver.LanternChestExit] if score @s SW.LanternChestBlend matches 0 store result entity @s Rotation[0] float 0.01 run scoreboard players get @s SW.LanternAngle
execute if entity @s[tag=Supports.Soulweaver.LanternChestExit] if score @s SW.LanternChestBlend matches 0 run tag @s remove Supports.Soulweaver.LanternChestExit

# Distance floors keep the lantern able to catch elytra, horses, and other fast movement.
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=2..,sort=nearest,limit=1] if score @s SW.LanternMax < #WakeFar2 SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeFar2 SW.LanternMax
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=5..,sort=nearest,limit=1] if score @s SW.LanternMax < #WakeFar5 SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeFar5 SW.LanternMax
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=20..,sort=nearest,limit=1] if score @s SW.LanternMax < #WakeFar20 SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeFar20 SW.LanternMax
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=50..,sort=nearest,limit=1] if score @s SW.LanternMax < #WakeFar50 SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeFar50 SW.LanternMax
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=100..,sort=nearest,limit=1] if score @s SW.LanternMax < #WakeFar100 SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeFar100 SW.LanternMax
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=250..,sort=nearest,limit=1] if score @s SW.LanternMax < #WakeFar250 SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeFar250 SW.LanternMax
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=1000..,sort=nearest,limit=1] if score @s SW.LanternMax < #WakeFar1000 SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeFar1000 SW.LanternMax

# Reach the movement-scaled horizontal cap in roughly four ticks.
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeInitialized] run scoreboard players set @s SW.LanternRise 0
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeInitialized] run tag @s remove Supports.Soulweaver.LanternWakeReached
tag @s add Supports.Soulweaver.LanternWakeInitialized
tag @s remove Supports.Soulweaver.LanternWakeStepReached
scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternMax
scoreboard players operation @s SW.LanternVelDiff /= #WakeAccelDiv SW.LanternMax
execute if score @s SW.LanternVelDiff < #WakeMinAccel SW.LanternMax run scoreboard players operation @s SW.LanternVelDiff = #WakeMinAccel SW.LanternMax
scoreboard players operation @s SW.LanternRise += @s SW.LanternVelDiff
execute if score @s SW.LanternRise > @s SW.LanternMax run scoreboard players operation @s SW.LanternRise = @s SW.LanternMax

# Arrival needs both the carrier and the independently smoothed Y target.
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1] facing entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1] feet run function mrt_supports:soulweaver/lantern/rest/wake-rise-step

execute at @s if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,tag=Supports.Soulweaver.LanternWakeYReached,distance=..0.01,sort=nearest,limit=1] run tag @s add Supports.Soulweaver.LanternWakeReached
execute if entity @s[tag=Supports.Soulweaver.LanternWakeReached] run tp @s @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1]

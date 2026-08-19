# Save the live target Y, then restore the marker so vertical catch-up can use its own curve.
execute store result score @s SW.LanternTargetAngle run data get entity @s Pos[1] 1000
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s SW.LanternDelta

# Work with an absolute gap and remember whether the target is below.
scoreboard players operation @s SW.LanternDesiredVel = @s SW.LanternTargetAngle
scoreboard players operation @s SW.LanternDesiredVel -= @s SW.LanternDelta
tag @s remove Supports.Soulweaver.LanternWakeDown
tag @s remove Supports.Soulweaver.LanternWakeYReached
execute if score @s SW.LanternDesiredVel matches ..-1 run tag @s add Supports.Soulweaver.LanternWakeDown
execute if score @s SW.LanternDesiredVel matches ..-1 run scoreboard players operation @s SW.LanternDesiredVel *= #NegOne ml.tmp

# Vertical cap = 0.12 + 0.20 * height gap + 2.0 * absolute player Y motion.
scoreboard players operation @s SW.LanternYMax = @s SW.LanternDesiredVel
scoreboard players operation @s SW.LanternYMax /= #WakeYDistanceDiv SW.LanternYMax
execute if score @s SW.LanternVelDiff matches ..-1 run scoreboard players operation @s SW.LanternVelDiff *= #NegOne ml.tmp
scoreboard players operation @s SW.LanternVelDiff *= #WakeYScale SW.LanternYMax
scoreboard players operation @s SW.LanternYMax += @s SW.LanternVelDiff
scoreboard players operation @s SW.LanternYMax += #WakeYBase SW.LanternYMax
execute if score @s SW.LanternYMax > #WakeYCap SW.LanternYMax run scoreboard players operation @s SW.LanternYMax = #WakeYCap SW.LanternYMax

# Derive acceleration from that cap so a badly lagging lantern rises harder.
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeYInitialized] run scoreboard players set @s SW.LanternRise 0
tag @s add Supports.Soulweaver.LanternWakeYInitialized
scoreboard players operation @s SW.LanternVelDiff = @s SW.LanternYMax
scoreboard players operation @s SW.LanternVelDiff /= #WakeYAccelDiv SW.LanternYMax
execute if score @s SW.LanternVelDiff < #WakeYMinAccel SW.LanternYMax run scoreboard players operation @s SW.LanternVelDiff = #WakeYMinAccel SW.LanternYMax
scoreboard players operation @s SW.LanternRise += @s SW.LanternVelDiff
execute if score @s SW.LanternRise > @s SW.LanternYMax run scoreboard players operation @s SW.LanternRise = @s SW.LanternYMax

# Clamp the last step so it lands exactly on the target height.
execute if score @s SW.LanternDesiredVel <= @s SW.LanternRise run scoreboard players operation @s SW.LanternDelta = @s SW.LanternTargetAngle
execute if score @s SW.LanternDesiredVel <= @s SW.LanternRise run tag @s add Supports.Soulweaver.LanternWakeYReached
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeYReached] if entity @s[tag=Supports.Soulweaver.LanternWakeDown] run scoreboard players operation @s SW.LanternDelta -= @s SW.LanternRise
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeYReached] unless entity @s[tag=Supports.Soulweaver.LanternWakeDown] run scoreboard players operation @s SW.LanternDelta += @s SW.LanternRise
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s SW.LanternDelta

# Horizontal cap = 0.30 + 4.0 * (absolute motion X + absolute motion Z).
execute if score @s SW.LanternDelta matches ..-1 run scoreboard players operation @s SW.LanternDelta *= #NegOne ml.tmp
execute if score @s SW.LanternDesiredVel matches ..-1 run scoreboard players operation @s SW.LanternDesiredVel *= #NegOne ml.tmp
execute if score @s SW.LanternVelDiff matches ..-1 run scoreboard players operation @s SW.LanternVelDiff *= #NegOne ml.tmp

scoreboard players operation @s SW.LanternMax = @s SW.LanternDelta
scoreboard players operation @s SW.LanternMax += @s SW.LanternVelDiff
scoreboard players operation @s SW.LanternMax *= #WakeScale SW.LanternMax
scoreboard players operation @s SW.LanternMax += #WakeBase SW.LanternMax
execute if score @s SW.LanternMax > #WakeCap SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeCap SW.LanternMax
execute if score @s SW.LanternMax < #WakeBase SW.LanternMax run scoreboard players operation @s SW.LanternMax = #WakeBase SW.LanternMax

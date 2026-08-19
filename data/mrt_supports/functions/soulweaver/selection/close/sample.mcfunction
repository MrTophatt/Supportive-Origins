# command_along_ray keeps @s as the Soul Weaver while moving the command position.
# SelectionCandidate is populated from this Weaver's entity set once per pass.
execute if entity @e[tag=Supports.Soulweaver.SelectionCandidate,distance=..3,limit=1] as @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run tp @s ~ ~ ~
execute if entity @e[tag=Supports.Soulweaver.SelectionCandidate,distance=..3,limit=1] as @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler] if score @s Supports.SW.ID = $Selecting Supports.SW.ID store result score $RayX SW.ax run data get entity @s Pos[0] 100
execute if entity @e[tag=Supports.Soulweaver.SelectionCandidate,distance=..3,limit=1] as @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler] if score @s Supports.SW.ID = $Selecting Supports.SW.ID store result score $RayY SW.ay run data get entity @s Pos[1] 100
execute if entity @e[tag=Supports.Soulweaver.SelectionCandidate,distance=..3,limit=1] as @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler] if score @s Supports.SW.ID = $Selecting Supports.SW.ID store result score $RayZ SW.az run data get entity @s Pos[2] 100
execute as @e[tag=Supports.Soulweaver.SelectionCandidate,distance=..3] run function mrt_supports:soulweaver/selection/close/score-sample

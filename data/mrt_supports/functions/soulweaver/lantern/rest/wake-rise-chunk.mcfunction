tp @s ~ ~ ~

execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=..0.01,sort=nearest,limit=1] run tag @s add Supports.Soulweaver.LanternWakeStepReached
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeStepReached] if score @s SW.LanternVelDiff matches 1000.. if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=..1.0,sort=nearest,limit=1] run tag @s add Supports.Soulweaver.LanternWakeStepReached
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeStepReached] if score @s SW.LanternVelDiff matches 100..999 if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=..0.1,sort=nearest,limit=1] run tag @s add Supports.Soulweaver.LanternWakeStepReached
execute if entity @s[tag=Supports.Soulweaver.LanternWakeStepReached] run tp @s @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1]
execute if entity @s[tag=Supports.Soulweaver.LanternWakeStepReached] run scoreboard players set @s SW.LanternVelDiff 0
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeStepReached] if score @s SW.LanternVelDiff matches 1000.. run function mrt_supports:soulweaver/lantern/rest/wake-rise-move-block
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeStepReached] if score @s SW.LanternVelDiff matches 100..999 run function mrt_supports:soulweaver/lantern/rest/wake-rise-move-tenth
execute unless entity @s[tag=Supports.Soulweaver.LanternWakeStepReached] if score @s SW.LanternVelDiff matches 1..99 run function mrt_supports:soulweaver/lantern/rest/wake-rise-move

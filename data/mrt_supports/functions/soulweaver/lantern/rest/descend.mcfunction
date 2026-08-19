tag @s remove Supports.Soulweaver.LanternRestStepTaken
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=1.5..,sort=nearest,limit=1] facing entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1] feet run function mrt_supports:soulweaver/lantern/rest/step-far
execute unless entity @s[tag=Supports.Soulweaver.LanternRestStepTaken] if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=0.4..1.5,sort=nearest,limit=1] facing entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1] feet run function mrt_supports:soulweaver/lantern/rest/step-medium
execute unless entity @s[tag=Supports.Soulweaver.LanternRestStepTaken] if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=0.08..0.4,sort=nearest,limit=1] facing entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1] feet run function mrt_supports:soulweaver/lantern/rest/step-near

execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=..0.08,sort=nearest,limit=1] run tp @s @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,sort=nearest,limit=1]
execute if entity @e[type=minecraft:marker,tag=Supports.Soulweaver.ActiveLanternRestTarget,distance=..0.08,sort=nearest,limit=1] run tag @s add Supports.Soulweaver.LanternRestLanded
tag @s remove Supports.Soulweaver.LanternRestStepTaken

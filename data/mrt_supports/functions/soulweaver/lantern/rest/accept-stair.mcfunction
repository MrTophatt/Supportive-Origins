execute if block ~ ~-1 ~ #minecraft:stairs[half=bottom] run summon minecraft:marker ~ ~ ~ {Tags:["Supports.Soulweaver.LanternRestTarget","Supports.Soulweaver.NewLanternRestTarget","Supports.Soulweaver.LanternRestStairBottom"]}
execute if block ~ ~-1 ~ #minecraft:stairs[half=top] run summon minecraft:marker ~ ~0.5 ~ {Tags:["Supports.Soulweaver.LanternRestTarget","Supports.Soulweaver.NewLanternRestTarget","Supports.Soulweaver.LanternRestStairTop"]}
tag @s add Supports.Soulweaver.LanternRestFound

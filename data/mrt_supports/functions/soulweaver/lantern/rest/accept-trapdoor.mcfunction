execute if block ~ ~-1 ~ #minecraft:trapdoors[half=bottom,open=false] run summon minecraft:marker ~ ~-0.3125 ~ {Tags:["Supports.Soulweaver.LanternRestTarget","Supports.Soulweaver.NewLanternRestTarget","Supports.Soulweaver.LanternRestTrapdoorBottom"]}
execute if block ~ ~-1 ~ #minecraft:trapdoors[half=top,open=false] run summon minecraft:marker ~ ~0.5 ~ {Tags:["Supports.Soulweaver.LanternRestTarget","Supports.Soulweaver.NewLanternRestTarget","Supports.Soulweaver.LanternRestTrapdoorTop"]}
tag @s add Supports.Soulweaver.LanternRestFound

execute if block ~ ~-1 ~ #minecraft:slabs[type=bottom] run summon minecraft:marker ~ ~ ~ {Tags:["Supports.Soulweaver.LanternRestTarget","Supports.Soulweaver.NewLanternRestTarget","Supports.Soulweaver.LanternRestSlabBottom"]}
execute if block ~ ~-1 ~ #minecraft:slabs[type=top] run summon minecraft:marker ~ ~0.5 ~ {Tags:["Supports.Soulweaver.LanternRestTarget","Supports.Soulweaver.NewLanternRestTarget","Supports.Soulweaver.LanternRestSlabTop"]}
execute if block ~ ~-1 ~ #minecraft:slabs[type=double] run summon minecraft:marker ~ ~0.5 ~ {Tags:["Supports.Soulweaver.LanternRestTarget","Supports.Soulweaver.NewLanternRestTarget","Supports.Soulweaver.LanternRestSlabDouble"]}
tag @s add Supports.Soulweaver.LanternRestFound

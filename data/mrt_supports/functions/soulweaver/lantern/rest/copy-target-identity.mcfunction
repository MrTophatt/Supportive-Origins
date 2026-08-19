# Connect the resting place to its owner
scoreboard players operation @e[type=minecraft:marker,tag=Supports.Soulweaver.NewLanternRestTarget,distance=..5] Supports.SW.ID = @s Supports.SW.ID
scoreboard players operation @e[type=minecraft:marker,tag=Supports.Soulweaver.NewLanternRestTarget,distance=..5] SW.LanternGeneration = @s SW.LanternGeneration

# Search straight down from wherever the lantern was when resting interrupted follow mode.
tag @s remove Supports.Soulweaver.LanternRestFound
kill @e[type=minecraft:marker,tag=Supports.Soulweaver.NewLanternRestTarget]

execute align y run function mrt_supports:soulweaver/lantern/rest/search-down
tag @s remove Supports.Soulweaver.LanternRestFound

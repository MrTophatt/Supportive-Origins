# One positional helper is reused for the whole close-range ray.
execute as @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler] if score @s Supports.SW.ID = $Selecting Supports.SW.ID run kill @s
summon minecraft:marker ~ ~ ~ {Tags:["Supports.Soulweaver.SelectionSampler","Supports.Soulweaver.NewSelectionSampler"]}
scoreboard players operation @e[type=minecraft:marker,tag=Supports.Soulweaver.NewSelectionSampler,sort=nearest,limit=1] Supports.SW.ID = @s Supports.SW.ID
tag @e[type=minecraft:marker,tag=Supports.Soulweaver.NewSelectionSampler,sort=nearest,limit=1] remove Supports.Soulweaver.NewSelectionSampler

scoreboard players set $Best SW.Distance 2147483647
scoreboard players set $BestLink Supports.SW.LinkID -1

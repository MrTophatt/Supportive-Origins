# Portal leftovers clean themselves up once their old chunk finally loads.
scoreboard players operation #LanternOwner Supports.SW.ID = @s Supports.SW.ID
scoreboard players operation #LanternGeneration SW.LanternGeneration = @s SW.LanternGeneration
scoreboard players set #LanternOwnerOnline Supports.SW.ID 0

execute as @a[tag=Supports.Soulweaver.LanternOwnerActive] if score @s Supports.SW.ID = #LanternOwner Supports.SW.ID if score @s SW.LanternGeneration = #LanternGeneration SW.LanternGeneration run scoreboard players set #LanternOwnerOnline Supports.SW.ID 1

execute if score #LanternOwnerOnline Supports.SW.ID matches 0 run kill @s

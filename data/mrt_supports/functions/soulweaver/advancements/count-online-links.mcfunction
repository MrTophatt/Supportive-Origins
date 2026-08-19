# Count only currently online players woven to this Weaver. Armor stands and stored entity-set entries do not count.
scoreboard players operation $OnlineLinkOwner Supports.SW.ID = @s Supports.SW.ID
scoreboard players set $OnlineLinks SW.AdvCount 0
execute as @a[tag=Supports.Soulweaver.LinkedEntity] if score @s Supports.SW.ID = $OnlineLinkOwner Supports.SW.ID run scoreboard players add $OnlineLinks SW.AdvCount 1
scoreboard players operation @s SW.AdvCount = $OnlineLinks SW.AdvCount

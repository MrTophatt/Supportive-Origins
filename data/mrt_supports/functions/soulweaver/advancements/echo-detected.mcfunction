# Runs as an entity detected by Echo Sight, while $EchoOwner identifies the casting Weaver.
execute if entity @s[tag=Supports.Soulweaver.Adv.Unraveled] if score @s SW.MarkOwner = $EchoOwner Supports.SW.ID as @a[tag=Supports.Soulweaver.Owner] if score @s Supports.SW.ID = $EchoOwner Supports.SW.ID run advancement grant @s only mrt_supports:soulweaver/i_see_you complete
scoreboard players operation @s SW.EchoOwner = $EchoOwner Supports.SW.ID
scoreboard players set @s SW.AdvEchoTTL 200
tag @s add Supports.Soulweaver.Adv.EchoSeen

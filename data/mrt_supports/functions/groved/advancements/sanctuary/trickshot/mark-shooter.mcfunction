execute unless entity @s[tag=Supports.Groved.Adv.Trickshot] run tag @s add Supports.Groved.Adv.TrickPending
execute unless entity @s[tag=Supports.Groved.Adv.Trickshot] run tag @s add Supports.Groved.Adv.TrickTracking
execute unless entity @s[tag=Supports.Groved.Adv.Trickshot] run scoreboard players set @s Groved.TrickTTL 1
advancement revoke @s only mrt_supports:detectors/groved/trickshot_hit

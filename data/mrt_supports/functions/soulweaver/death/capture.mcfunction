# The pre-death hook normally chooses the fracture before any grave can copy inventory.
# Keep a safe fallback for deaths initiated outside the standard damage pipeline.
execute unless entity @s[tag=Supports.Soulweaver.SoulFracture] unless entity @s[tag=Supports.Soulweaver.ShortFracture] unless entity @s[tag=Supports.Soulweaver.LongFracture] run tag @s add Supports.Soulweaver.LongFracture
tag @s remove Supports.Soulweaver.HasSoulLantern
tag @s remove Supports.Soulweaver.HasLantern
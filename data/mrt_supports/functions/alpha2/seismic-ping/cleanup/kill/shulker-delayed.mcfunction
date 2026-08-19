# Scheduled functions have no entity/dimension context, so remove every marked highlight explicitly in each vanilla dimension one tick after teardown.
execute in minecraft:overworld run kill @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlightPendingKill]
execute in minecraft:the_nether run kill @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlightPendingKill]
execute in minecraft:the_end run kill @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlightPendingKill]

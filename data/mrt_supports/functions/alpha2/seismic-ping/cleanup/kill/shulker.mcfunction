data merge entity @s {Glowing:0b}
tp @s ~ -1000 ~
tag @s add Supports.Alpha02.OreHighlightPendingKill
schedule function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker-delayed 1t replace

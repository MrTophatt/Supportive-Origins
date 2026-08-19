# Seismic Ping ownership, profiling, and resource-to-function dispatch bridge.
scoreboard objectives add A2.ScanID dummy
scoreboard objectives add A2.Ores dummy
scoreboard objectives add A2.Shell dummy
scoreboard objectives add A2.ShellOres dummy
scoreboard objectives add A2.ShellShulkers dummy
scoreboard objectives add A2.Checked dummy
scoreboard objectives add A2.ShellPos dummy
scoreboard objectives add A2.Height dummy
scoreboard objectives add A2.GroupValid dummy

scoreboard players add $Next A2.ScanID 0

# These role tags exist only during one synchronous band dispatch.
tag @a remove Supports.Alpha02.ScanOwnerCurrent
tag @a remove Supports.Alpha02.ScanRenderValid

# A reload invalidates short-lived output in every vanilla dimension.
execute in minecraft:overworld run kill @e[type=minecraft:marker,tag=Supports.Alpha02.ScanCurrent]
execute in minecraft:overworld as @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlight] at @s run function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker
execute in minecraft:the_nether run kill @e[type=minecraft:marker,tag=Supports.Alpha02.ScanCurrent]
execute in minecraft:the_nether as @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlight] at @s run function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker
execute in minecraft:the_end run kill @e[type=minecraft:marker,tag=Supports.Alpha02.ScanCurrent]
execute in minecraft:the_end as @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlight] at @s run function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker

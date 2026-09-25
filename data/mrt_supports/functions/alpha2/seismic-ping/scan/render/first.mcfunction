execute store result score @s A2.Shell run apoli:resource get @s mrt_supports:alpha2/scan-ores_ping-shell

tag @a[tag=Supports.Alpha02.ScanOwnerCurrent] remove Supports.Alpha02.ScanOwnerCurrent
tag @s add Supports.Alpha02.ScanOwnerCurrent
tag @s remove Supports.Alpha02.ScanRenderValid
tag @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOriginCurrent] remove Supports.Alpha02.ScanOriginCurrent

execute as @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOrigin] if score @s A2.ScanID = @a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.ScanID run tag @s add Supports.Alpha02.ScanOriginCurrent
execute if entity @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOriginCurrent,limit=1] run tag @s add Supports.Alpha02.ScanRenderValid
execute if entity @s[tag=Supports.Alpha02.ScanRenderValid] as @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOriginCurrent,limit=1] at @s run function mrt_supports:alpha2/seismic-ping/scan/dispatch/first
execute unless entity @s[tag=Supports.Alpha02.ScanRenderValid] run function mrt_supports:alpha2/seismic-ping/lifecycle/abort

tag @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOriginCurrent] remove Supports.Alpha02.ScanOriginCurrent
tag @s remove Supports.Alpha02.ScanRenderValid
tag @s remove Supports.Alpha02.ScanOwnerCurrent

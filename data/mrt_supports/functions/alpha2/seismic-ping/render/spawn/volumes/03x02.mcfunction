scoreboard players add @a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.Ores 18
scoreboard players add @a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.ShellOres 18
scoreboard players add @a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.ShellShulkers 1
execute align xyz run summon minecraft:shulker ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Glowing:1b,DeathLootTable:"minecraft:empty",Tags:["Supports.Alpha02.OreHighlight","Supports.Alpha02.OreHighlightNew"],cardinal_components:{"apoli:powers":{Powers:[{Type:"mrt_supports:alpha2/given/ore-highlight",Sources:["apoli:command"]}]}}}
execute align xyz as @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlightNew,distance=..1,sort=nearest,limit=1] run function mrt_supports:alpha2/seismic-ping/render/initialize/volumes/03x02

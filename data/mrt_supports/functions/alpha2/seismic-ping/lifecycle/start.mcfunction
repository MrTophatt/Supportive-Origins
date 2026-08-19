function mrt_supports:alpha2/advancements/ability-used
scoreboard players add @s A2.ScanID 0
function mrt_supports:alpha2/seismic-ping/cleanup/all
scoreboard players add $Next A2.ScanID 1
scoreboard players operation @s A2.ScanID = $Next A2.ScanID
scoreboard players set @s A2.Ores 0
scoreboard players set @s A2.Shell 0

# One owned marker freezes the activation's block-space origin for all 8 bands.
execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["Supports.Alpha02.ScanCurrent","Supports.Alpha02.ScanOrigin","Supports.Alpha02.ScanOriginNew"]}
execute align xyz run scoreboard players operation @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOriginNew,distance=..0.01,limit=1] A2.ScanID = @s A2.ScanID
execute align xyz run tag @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOriginNew,distance=..0.01,limit=1] remove Supports.Alpha02.ScanOriginNew

particle minecraft:sonic_boom ~ ~0.68 ~ 0 0 0 0 1 normal @a
particle minecraft:electric_spark ~ ~0.68 ~ 0.32 0.40 0.30 0.026 5 normal @a
particle minecraft:end_rod ~ ~0.68 ~ 0.26 0.34 0.24 0.014 3 normal @a
particle minecraft:scrape ~ ~0.68 ~ 0.28 0.36 0.26 0.014 3 normal @a
playsound minecraft:block.note_block.basedrum player @a ~ ~ ~ 0.95 0.80

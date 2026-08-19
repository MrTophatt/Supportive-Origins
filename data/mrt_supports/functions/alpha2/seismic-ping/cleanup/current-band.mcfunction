# Remove only this player's current band, in any loaded vanilla dimension.
scoreboard players set $Cleanup A2.ScanID 0
scoreboard players operation $Cleanup A2.ScanID = @s A2.ScanID
execute if score $Cleanup A2.ScanID matches 1.. in minecraft:overworld as @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlight] at @s if score @s A2.ScanID = $Cleanup A2.ScanID run function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker
execute if score $Cleanup A2.ScanID matches 1.. in minecraft:the_nether as @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlight] at @s if score @s A2.ScanID = $Cleanup A2.ScanID run function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker
execute if score $Cleanup A2.ScanID matches 1.. in minecraft:the_end as @e[type=minecraft:shulker,tag=Supports.Alpha02.OreHighlight] at @s if score @s A2.ScanID = $Cleanup A2.ScanID run function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker

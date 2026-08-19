# Remove this player's frozen origin marker after completion or cancellation.
scoreboard players set $Cleanup A2.ScanID 0
scoreboard players operation $Cleanup A2.ScanID = @s A2.ScanID
execute if score $Cleanup A2.ScanID matches 1.. in minecraft:overworld as @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOrigin] if score @s A2.ScanID = $Cleanup A2.ScanID run kill @s
execute if score $Cleanup A2.ScanID matches 1.. in minecraft:the_nether as @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOrigin] if score @s A2.ScanID = $Cleanup A2.ScanID run kill @s
execute if score $Cleanup A2.ScanID matches 1.. in minecraft:the_end as @e[type=minecraft:marker,tag=Supports.Alpha02.ScanOrigin] if score @s A2.ScanID = $Cleanup A2.ScanID run kill @s

apoli:power grant @s mrt_supports:alpha2/given/ore-highlight apoli:command
scoreboard players operation @s A2.ScanID = @a[tag=Supports.Alpha02.ScanOwnerCurrent,limit=1] A2.ScanID
scale delay set pehkui:height 0
scale delay set pehkui:width 0
scale set pehkui:height 5
tag @s remove Supports.Alpha02.OreHighlightNew

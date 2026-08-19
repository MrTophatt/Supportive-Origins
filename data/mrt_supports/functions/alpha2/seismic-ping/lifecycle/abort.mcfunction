resource set @s mrt_supports:alpha2/scan-ores_ping-active 0
resource set @s mrt_supports:alpha2/scan-ores_ping-shell 8
function mrt_supports:alpha2/seismic-ping/cleanup/all
tag @s remove Supports.Alpha02.ScanOwnerCurrent
tag @s remove Supports.Alpha02.ScanRenderValid
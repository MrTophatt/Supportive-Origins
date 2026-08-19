scoreboard players set $Height A2.Height 1
execute if score $Height A2.Height matches 1 if block ~ ~1 ~ #c:ores run scoreboard players set $Height A2.Height 2
execute if score $Height A2.Height matches 2 if block ~ ~2 ~ #c:ores run scoreboard players set $Height A2.Height 3
execute if score $Height A2.Height matches 3 if block ~ ~3 ~ #c:ores run scoreboard players set $Height A2.Height 4
execute if score $Height A2.Height matches 4 if block ~ ~4 ~ #c:ores run scoreboard players set $Height A2.Height 5
execute if score $Height A2.Height matches 5 if block ~ ~5 ~ #c:ores run scoreboard players set $Height A2.Height 6
execute if score $Height A2.Height matches 6 if block ~ ~6 ~ #c:ores run scoreboard players set $Height A2.Height 7
execute if score $Height A2.Height matches 7 if block ~ ~7 ~ #c:ores run scoreboard players set $Height A2.Height 8
execute if score $Height A2.Height matches 1 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/01
execute if score $Height A2.Height matches 2 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/02
execute if score $Height A2.Height matches 3 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/03
execute if score $Height A2.Height matches 4 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/04
execute if score $Height A2.Height matches 5 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/05
execute if score $Height A2.Height matches 6 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/06
execute if score $Height A2.Height matches 7 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/07
execute if score $Height A2.Height matches 8 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/08

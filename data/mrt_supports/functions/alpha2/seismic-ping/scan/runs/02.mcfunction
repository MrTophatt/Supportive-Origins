scoreboard players set $Height A2.Height 1
execute if score $Height A2.Height matches 1 if block ~ ~1 ~ #c:ores run scoreboard players set $Height A2.Height 2
execute if score $Height A2.Height matches 1 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/01
execute if score $Height A2.Height matches 2 run function mrt_supports:alpha2/seismic-ping/render/spawn/heights/02

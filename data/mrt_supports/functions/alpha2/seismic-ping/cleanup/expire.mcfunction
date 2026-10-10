execute if score @s A2.HighlightTTL matches 1.. run function mrt_supports:alpha2/seismic-ping/cleanup/expire-countdown
execute unless score @s A2.HighlightTTL matches 1.. run function mrt_supports:alpha2/seismic-ping/cleanup/kill/shulker

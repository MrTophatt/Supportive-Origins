# A2.Ores counts every detected ore once across all eight bands.
execute if score @s A2.Ores matches 64.. run advancement grant @s only mrt_supports:alpha2/pocket_change complete
execute if score @s A2.Ores matches 128.. run advancement grant @s only mrt_supports:alpha2/payday complete
execute if score @s A2.Ores matches 256.. run advancement grant @s only mrt_supports:alpha2/bounty complete
execute if score @s A2.Ores matches 512.. run advancement grant @s only mrt_supports:alpha2/mother_lode complete
execute if score @s A2.Ores matches 1024.. run advancement grant @s only mrt_supports:alpha2/seismic_fortune complete
execute if score @s A2.Ores matches 2048.. run advancement grant @s only mrt_supports:alpha2/seismic_jackpot complete
# Ore You Kidding Me was calculated as ceil(17077 * 2 / 3) = 11385 ores.
execute if score @s A2.Ores matches 11385.. run advancement grant @s only mrt_supports:alpha2/ore_you_kidding_me complete
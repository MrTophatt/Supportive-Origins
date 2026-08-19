# Run before Nature's Embrace consumes the selected item.
advancement grant @s only mrt_supports:groved/root root
execute if entity @s[nbt={SelectedItem:{id:"minecraft:lilac"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here lilac
execute if entity @s[nbt={SelectedItem:{id:"minecraft:pink_petals"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here pink_petals
execute if entity @s[nbt={SelectedItem:{id:"minecraft:poppy"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here poppy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:rose_bush"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here rose_bush
execute if entity @s[nbt={SelectedItem:{id:"minecraft:peony"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here peony
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sunflower"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here sunflower
execute if entity @s[nbt={SelectedItem:{id:"minecraft:dandelion"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here dandelion
execute if entity @s[nbt={SelectedItem:{id:"minecraft:blue_orchid"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here blue_orchid
execute if entity @s[nbt={SelectedItem:{id:"minecraft:allium"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here allium
execute if entity @s[nbt={SelectedItem:{id:"minecraft:white_tulip"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here white_tulip
execute if entity @s[nbt={SelectedItem:{id:"minecraft:orange_tulip"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here orange_tulip
execute if entity @s[nbt={SelectedItem:{id:"minecraft:pink_tulip"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here pink_tulip
execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_tulip"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here red_tulip
execute if entity @s[nbt={SelectedItem:{id:"minecraft:azure_bluet"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here azure_bluet
execute if entity @s[nbt={SelectedItem:{id:"minecraft:lily_of_the_valley"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here lily_of_the_valley
execute if entity @s[nbt={SelectedItem:{id:"minecraft:oxeye_daisy"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here oxeye_daisy
execute if entity @s[nbt={SelectedItem:{id:"minecraft:cornflower"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here cornflower
execute if entity @s[nbt={SelectedItem:{id:"minecraft:torchflower"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here torchflower
execute if entity @s[nbt={SelectedItem:{id:"minecraft:pitcher_plant"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here pitcher_plant
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wither_rose"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here wither_rose
execute if entity @s[nbt={SelectedItem:{id:"minecraft:brown_mushroom"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here brown_mushroom
execute if entity @s[nbt={SelectedItem:{id:"minecraft:red_mushroom"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here red_mushroom
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crimson_fungus"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here crimson_fungus
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus"}}] run advancement grant @s only mrt_supports:groved/how_did_we_grow_here warped_fungus

# These four plants apply harmful effects. Require another living target in the effect radius.
execute if entity @e[type=!#mrt_supports:non-living,distance=0.01..5,limit=1] if entity @s[nbt={SelectedItem:{id:"minecraft:wither_rose"}}] run function mrt_supports:groved/advancements/natures-embrace/hostile
execute if entity @e[type=!#mrt_supports:non-living,distance=0.01..5,limit=1] if entity @s[nbt={SelectedItem:{id:"minecraft:brown_mushroom"}}] run function mrt_supports:groved/advancements/natures-embrace/hostile
execute if entity @e[type=!#mrt_supports:non-living,distance=0.01..5,limit=1] if entity @s[nbt={SelectedItem:{id:"minecraft:red_mushroom"}}] run function mrt_supports:groved/advancements/natures-embrace/hostile
execute if entity @e[type=!#mrt_supports:non-living,distance=0.01..5,limit=1] if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus"}}] run function mrt_supports:groved/advancements/natures-embrace/hostile

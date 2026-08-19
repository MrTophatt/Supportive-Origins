execute store result score @s SW.AdvStrand run resource get @s mrt_supports:soulweaver/lantern-strands_state
execute if score @s SW.AdvStrand matches 0 run advancement grant @s only mrt_supports:soulweaver/perfect_resonance renewal
execute if score @s SW.AdvStrand matches 1 run advancement grant @s only mrt_supports:soulweaver/perfect_resonance warding
execute if score @s SW.AdvStrand matches 2 run advancement grant @s only mrt_supports:soulweaver/perfect_resonance fervor
execute if score @s SW.AdvStrand matches 3 run advancement grant @s only mrt_supports:soulweaver/perfect_resonance force
execute if score @s SW.AdvStrand matches 4 run advancement grant @s only mrt_supports:soulweaver/perfect_resonance resolve

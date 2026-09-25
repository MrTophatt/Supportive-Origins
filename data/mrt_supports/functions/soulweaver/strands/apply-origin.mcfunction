execute store result score @s SW.LanternStrand run apoli:resource get @s mrt_supports:soulweaver/lantern-strands_state
execute if score @s SW.LanternStrand matches 0 run origin set @s mrt_supports:strands mrt_supports:strands/renewal
execute if score @s SW.LanternStrand matches 1 run origin set @s mrt_supports:strands mrt_supports:strands/warding
execute if score @s SW.LanternStrand matches 2 run origin set @s mrt_supports:strands mrt_supports:strands/fervor
execute if score @s SW.LanternStrand matches 3 run origin set @s mrt_supports:strands mrt_supports:strands/force
execute if score @s SW.LanternStrand matches 4 run origin set @s mrt_supports:strands mrt_supports:strands/resolve

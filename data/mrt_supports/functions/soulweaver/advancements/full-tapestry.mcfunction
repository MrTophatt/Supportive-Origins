function mrt_supports:soulweaver/advancements/count-online-links
execute if score @s SW.AdvCount matches 5 run advancement grant @s only mrt_supports:soulweaver/full_tapestry complete

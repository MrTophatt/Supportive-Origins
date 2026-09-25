# The persistent link resource is derived from authoritative stands, so offline woven souls still count.
execute store result score @s SW.AdvCount run apoli:resource get @s mrt_supports:soulweaver/link_counter
execute if score @s SW.AdvCount matches 1.. run advancement grant @s only mrt_supports:soulweaver/first_thread complete
execute if score @s SW.AdvCount matches 2.. run advancement grant @s only mrt_supports:soulweaver/second_thread complete
execute if score @s SW.AdvCount matches 3.. run advancement grant @s only mrt_supports:soulweaver/third_thread complete
execute if score @s SW.AdvCount matches 4.. run advancement grant @s only mrt_supports:soulweaver/fourth_thread complete
execute if score @s SW.AdvCount matches 5.. run advancement grant @s only mrt_supports:soulweaver/fifth_thread complete

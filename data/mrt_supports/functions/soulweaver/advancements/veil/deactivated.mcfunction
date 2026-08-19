tag @s remove Supports.Soulweaver.Adv.VeilActive
scoreboard players set $VeilNearby SW.AdvCount 0
execute as @e[type=#mrt_supports:hostile_mobs,distance=0.01..6] run scoreboard players add $VeilNearby SW.AdvCount 1
execute if score $VeilNearby SW.AdvCount matches 3.. run advancement grant @s only mrt_supports:soulweaver/now_you_see_me complete

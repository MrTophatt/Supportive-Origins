# Summon the armor stand
summon armor_stand ~ ~-1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["distance_tracker"]}

# Mark the armor stand temporarily with the summoner's soulLinkID
execute store result score @e[type=armor_stand,tag=distance_tracker,sort=nearest,limit=1] soulLinkID run scoreboard players get @s soulLinkID

# Now run the calculation, but only if there is a linked player with the same soulLinkID
execute as @e[type=armor_stand,tag=distance_tracker,sort=nearest,limit=1] at @s run function mrt_supports:soulweaver/selector/calc-dist
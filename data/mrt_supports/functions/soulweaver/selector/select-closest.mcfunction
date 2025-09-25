scoreboard players operation #temp soulLinkID = @s soulLinkID

# Clear any old "selected" tags
execute as @a[tag=linked] if score @s soulLinkID = #temp soulLinkID run tag @s remove selected

# Reset a helper value
scoreboard players set #min Distance 999999999

# Loop over candidates: update #min if this stand is closer
execute as @e[type=armor_stand,tag=distance_tracker] if score @s soulLinkID = #temp soulLinkID run execute if score @s Distance < #min Distance run scoreboard players operation #min Distance = @s Distance
execute as @e[type=armor_stand,tag=distance_tracker] if score @s soulLinkID = #temp soulLinkID run execute if score @s Distance > #min Distance run kill @s

# Identify the stand that matched the smallest Distance
execute as @e[type=armor_stand,tag=distance_tracker] if score @s soulLinkID = #temp soulLinkID if score @s Distance = #min Distance run tag @s add closest

# Give the nearest linked player to that stand the "selected" tag
execute as @e[type=armor_stand,tag=distance_tracker,limit=1] at @s if score @s soulLinkID = #temp soulLinkID as @p[tag=linked] if score @s soulLinkID = #temp soulLinkID run function mrt_supports:soulweaver/selector/select
execute as @e[type=armor_stand,tag=distance_tracker] if score @s soulLinkID = #temp soulLinkID run kill @s
# This runs from prevent_death while the live inventory is still intact.
tag @s remove Supports.Soulweaver.ShortFracture
tag @s remove Supports.Soulweaver.LongFracture
tag @s remove Supports.Soulweaver.SoulFracture

# Soul lanterns take priority when the player carries both kinds.
scoreboard players set #DeathItemConsumed ml.tmp 0
execute store result score #DeathItemConsumed ml.tmp run clear @s minecraft:soul_lantern 1
execute if score #DeathItemConsumed ml.tmp matches 1.. run tag @s add Supports.Soulweaver.SoulFracture

execute if score #DeathItemConsumed ml.tmp matches 0 store result score #DeathItemConsumed ml.tmp run clear @s minecraft:lantern 1
execute if score #DeathItemConsumed ml.tmp matches 1.. unless entity @s[tag=Supports.Soulweaver.SoulFracture] run tag @s add Supports.Soulweaver.ShortFracture
execute if score #DeathItemConsumed ml.tmp matches 0 run tag @s add Supports.Soulweaver.LongFracture

execute if entity @s[tag=Supports.Soulweaver.SoulFracture] run advancement grant @s only mrt_supports:soulweaver/a_lot_less_broken complete
execute if entity @s[tag=Supports.Soulweaver.ShortFracture] run advancement grant @s only mrt_supports:soulweaver/a_little_less_broken complete
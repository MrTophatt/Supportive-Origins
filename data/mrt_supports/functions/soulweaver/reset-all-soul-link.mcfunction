scoreboard players operation #temp soulLinkID = @s soulLinkID

# REMOVE
execute as @a[tag=linked] run function mrt_supports:soulweaver/buffs/revokebuffs
execute as @a[tag=linked] run function mrt_supports:soulweaver/remove-helpers

# Reset all players' soulLinkID
scoreboard players reset @a[tag=linked] soulLinkID

# Remove 'linked' tag from all entities
tag @e remove linked
execute as @a[tag=soulweaver] run resource set @s mrt_supports:soulweaver/soullink_link-count 0
execute as @a run function mrt_supports:soulweaver/buffs/revokebuffs

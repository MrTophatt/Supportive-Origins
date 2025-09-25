# REMOVE
execute as @a[tag=linked] run function mrt_supports:soulweaver/buffs/revokebuffs

# Reset all players' soulLinkID
scoreboard players reset @a[tag=linked] soulLinkID

# Remove 'linked' tag from all entities
tag @e remove linked
tag @e remove selected
tag @e remove removingLink
tag @e remove target
execute as @a[tag=soulweaver] run resource set @s mrt_supports:soulweaver/soullink_link-count 0
execute as @a run function mrt_supports:soulweaver/buffs/revokebuffs

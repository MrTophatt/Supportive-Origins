# Store the player's soulLinkID in a temporary fake player
scoreboard players operation #temp soulLinkID = @s soulLinkID

# Remove the link from the player
scoreboard players reset @s soulLinkID

execute as @a[distance=0.1..,scores={soulLinkID=1..}] if score @s soulLinkID = #temp soulLinkID run function mrt_supports:soulweaver/buffs/revokebuffs

# Remove the soulLinkID from all entities that share it
execute as @a[distance=0.1..,scores={soulLinkID=1..}] if score @s soulLinkID = #temp soulLinkID run scoreboard players set @s soulLinkID 0

# Remove the linked tag from entities that were linked to this player
execute as @a[distance=0.1..,tag=linked] if score @s soulLinkID matches 0 run tag @s remove linked

function mrt_supports:soulweaver/buffs/revokebuffs
function mrt_supports:soulweaver/remove-helpers
tag @s remove soulweaver
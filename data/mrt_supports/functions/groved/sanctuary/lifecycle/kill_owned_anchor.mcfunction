# Remove Sanctuary owned by this player
scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.OwnerID
execute as @e[type=minecraft:armor_stand,tag=Supports.Groved.SanctuaryAnchor] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run function mrt_supports:groved/sanctuary/ricochet/tracking/remove_anchor

# Play closing effect and remove Sanctuary
scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.OwnerID
execute as @e[type=minecraft:armor_stand,tag=Supports.Groved.SanctuaryAnchor] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID at @s run function mrt_supports:groved/sanctuary/effects/collapse
execute as @e[type=minecraft:armor_stand,tag=Supports.Groved.SanctuaryAnchor] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run function mrt_supports:groved/sanctuary/ricochet/tracking/remove_anchor
tag @s remove Supports.Groved.SanctuaryDeployed
tag @s remove Supports.Groved.SanctuaryAnchorMissing
function mrt_supports:groved/advancements/sanctuary/safe-haven/reset

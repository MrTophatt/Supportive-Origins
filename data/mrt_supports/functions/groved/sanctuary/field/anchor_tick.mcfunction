# Remove broken Sanctuary or update its area
tag @s add Supports.Groved.SanctuaryAnchorChecking
tag @s remove Supports.Groved.SanctuaryAnchorValid
scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.OwnerID
execute as @e[type=minecraft:player,tag=Supports.Groved.SanctuaryDeployed] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run tag @e[type=minecraft:armor_stand,tag=Supports.Groved.SanctuaryAnchorChecking,limit=1] add Supports.Groved.SanctuaryAnchorValid
tag @s remove Supports.Groved.SanctuaryAnchorChecking
execute unless entity @s[tag=Supports.Groved.SanctuaryAnchorValid] run function mrt_supports:groved/sanctuary/ricochet/tracking/remove_anchor

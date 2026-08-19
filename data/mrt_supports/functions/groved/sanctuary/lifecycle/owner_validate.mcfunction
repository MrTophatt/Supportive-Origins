# Check that owner still has a Sanctuary
tag @s remove Supports.Groved.SanctuaryAnchorMissing
tag @s add Supports.Groved.SanctuaryOwnerChecking
tag @s remove Supports.Groved.SanctuaryOwnerValid
scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.OwnerID
execute as @e[type=minecraft:armor_stand,tag=Supports.Groved.SanctuaryAnchor] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run tag @e[type=minecraft:player,tag=Supports.Groved.SanctuaryOwnerChecking,limit=1] add Supports.Groved.SanctuaryOwnerValid
tag @s remove Supports.Groved.SanctuaryOwnerChecking
execute unless entity @s[tag=Supports.Groved.SanctuaryOwnerValid] run tag @s add Supports.Groved.SanctuaryAnchorMissing
tag @s remove Supports.Groved.SanctuaryOwnerValid

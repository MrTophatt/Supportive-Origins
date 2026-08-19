scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.TrackedID
tag @s add Supports.Groved.OwChecking
execute on origin if entity @s[type=minecraft:player] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run function mrt_supports:groved/advancements/sanctuary/ow/mark-shooter
tag @s remove Supports.Groved.OwChecking

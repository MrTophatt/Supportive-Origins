function mrt_supports:groved/sanctuary/field/prepare
scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.OwnerID
execute as @a if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run function mrt_supports:groved/advancements/sanctuary/safe-haven/owner

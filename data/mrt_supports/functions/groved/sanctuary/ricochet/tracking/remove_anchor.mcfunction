# Release projectiles and remove Sanctuary
scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.OwnerID
execute as @e[type=#mrt_supports:sanctuary_projectiles] if score @s Groved.TrackedID = $OwnerIDLookup Groved.OwnerID run function mrt_supports:groved/sanctuary/ricochet/tracking/reset
kill @s

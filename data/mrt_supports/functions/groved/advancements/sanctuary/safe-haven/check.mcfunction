# Resolve this projectile's tracked Sanctuary, then test the owner's exact cylinder position.
scoreboard players set $SafeAccepted Groved.AdvTmp 0
scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.TrackedID
execute as @e[type=minecraft:armor_stand,tag=Supports.Groved.SanctuaryAnchor] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run function mrt_supports:groved/advancements/sanctuary/safe-haven/anchor
execute if score $SafeAccepted Groved.AdvTmp matches 1 run scoreboard players operation @s Groved.SafeSess = @s Groved.TrackedID

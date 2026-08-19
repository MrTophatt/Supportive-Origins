scoreboard players operation $OwnerIDLookup Groved.OwnerID = @s Groved.OwnerID
execute as @a[tag=!Supports.Groved.Adv.Menagerie,tag=!Supports.Groved.Adv.MenagerieBlocked] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run advancement grant @s only mrt_supports:groved/root root
execute as @a[tag=!Supports.Groved.Adv.Menagerie,tag=!Supports.Groved.Adv.MenagerieBlocked] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run advancement grant @s only mrt_supports:groved/a_proper_menagerie complete
execute as @a[tag=!Supports.Groved.Adv.Menagerie,tag=!Supports.Groved.Adv.MenagerieBlocked] if score @s Groved.OwnerID = $OwnerIDLookup Groved.OwnerID run tag @s add Supports.Groved.Adv.Menagerie

execute unless entity @s[tag=Supports.Groved.Adv.SafeHaven] unless entity @s[tag=Supports.Groved.Adv.SafeHavenBlocked] run scoreboard players add @s Groved.SafeCount 1
execute unless entity @s[tag=Supports.Groved.Adv.SafeHaven] unless entity @s[tag=Supports.Groved.Adv.SafeHavenBlocked] run scoreboard players set $SafeAccepted Groved.AdvTmp 1
execute if score @s Groved.SafeCount matches 1.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run advancement grant @s only mrt_supports:groved/safe_haven projectile_1
execute if score @s Groved.SafeCount matches 2.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run advancement grant @s only mrt_supports:groved/safe_haven projectile_2
execute if score @s Groved.SafeCount matches 3.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run advancement grant @s only mrt_supports:groved/safe_haven projectile_3
execute if score @s Groved.SafeCount matches 4.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run advancement grant @s only mrt_supports:groved/safe_haven projectile_4
execute if score @s Groved.SafeCount matches 5.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run advancement grant @s only mrt_supports:groved/safe_haven projectile_5
execute if score @s Groved.SafeCount matches 1.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run tag @s add Supports.Groved.Adv.SafeHavenTracking
execute if score @s Groved.SafeCount matches 5.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run advancement grant @s only mrt_supports:groved/root root
execute if score @s Groved.SafeCount matches 5.. unless entity @s[tag=Supports.Groved.Adv.SafeHaven] run tag @s add Supports.Groved.Adv.SafeHaven

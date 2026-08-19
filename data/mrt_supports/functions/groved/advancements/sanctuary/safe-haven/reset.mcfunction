scoreboard players set @s Groved.SafeCount 0
execute if entity @s[advancements={mrt_supports:groved/safe_haven=false}] run advancement revoke @s only mrt_supports:groved/safe_haven
execute if entity @s[advancements={mrt_supports:groved/safe_haven=false}] run tag @s remove Supports.Groved.Adv.SafeHavenTracking
tag @s remove Supports.Groved.Adv.SafeHavenBlocked

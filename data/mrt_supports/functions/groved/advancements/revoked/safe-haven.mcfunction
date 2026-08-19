# Require a fresh Sanctuary activation after Safe Haven is revoked.
scoreboard players set @s Groved.SafeCount 0
tag @s remove Supports.Groved.Adv.SafeHaven
tag @s remove Supports.Groved.Adv.SafeHavenTracking
tag @s add Supports.Groved.Adv.SafeHavenBlocked
advancement revoke @s only mrt_supports:groved/safe_haven

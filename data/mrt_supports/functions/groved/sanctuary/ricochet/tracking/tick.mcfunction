# Count down projectile tracking
scoreboard players remove @e[scores={Groved.HitGuard=1..}] Groved.HitGuard 1
scoreboard players remove @e[type=#mrt_supports:sanctuary_projectiles,scores={Groved.TrackTTL=1..}] Groved.TrackTTL 1
execute as @e[type=#mrt_supports:sanctuary_projectiles,scores={Groved.TrackTTL=0}] run function mrt_supports:groved/sanctuary/ricochet/tracking/reset

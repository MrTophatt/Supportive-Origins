# Accumulate five seconds of attention. Brief misses consume the existing half-second grace window instead of resetting immediately.
execute if score $LanternLookHit SW.AdvCount matches 1 run scoreboard players add @s SW.AdvFront 1
execute if score $LanternLookHit SW.AdvCount matches 1 run scoreboard players set @s SW.AdvFrontGrace 10
execute if score $LanternLookHit SW.AdvCount matches 0 run scoreboard players add @s SW.AdvFrontGrace 0
execute if score $LanternLookHit SW.AdvCount matches 0 if score @s SW.AdvFrontGrace matches ..0 run scoreboard players set @s SW.AdvFront 0
execute if score $LanternLookHit SW.AdvCount matches 0 if score @s SW.AdvFrontGrace matches 1.. run scoreboard players remove @s SW.AdvFrontGrace 1
execute if score @s SW.AdvFront matches 100.. run advancement grant @s only mrt_supports:soulweaver/personal_space complete

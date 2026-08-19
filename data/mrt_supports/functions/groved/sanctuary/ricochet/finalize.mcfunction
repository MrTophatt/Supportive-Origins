tag @s add Supports.Groved.SanctuaryImpact
function mrt_supports:groved/advancements/sanctuary/ricochet
execute if entity @s[type=minecraft:shulker_bullet] run tag @s add Supports.Groved.SanctuaryNeutralize
scoreboard players set @s Groved.HitGuard 2

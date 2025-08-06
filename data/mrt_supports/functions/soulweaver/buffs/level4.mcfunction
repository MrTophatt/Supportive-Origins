scoreboard players operation #temp soulLinkID = @s soulLinkID

execute as @a[tag=linked] if score @s soulLinkID = #temp soulLinkID run function mrt_supports:soulweaver/buffs/revokebuffs
function mrt_supports:soulweaver/buffs/revokebuffs
execute as @a[tag=linked] if score @s soulLinkID = #temp soulLinkID run power grant @s mrt_supports:soulweaver/helpers/buffs/level4
power grant @s mrt_supports:soulweaver/helpers/buffs/level4
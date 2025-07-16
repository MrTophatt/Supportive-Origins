scoreboard players operation #temp soulLinkID = @s soulLinkID

execute as @e[type=armor_stand,tag=linked] if score @s soulLinkID = #temp soulLinkID run function mrt_supports:soulweaver/buffs/revokebuffs
function mrt_supports:soulweaver/buffs/revokebuffs
execute as @e[type=armor_stand,tag=linked] if score @s soulLinkID = #temp soulLinkID run power grant @s mrt_supports:soulweaver/helpers/buffs/level5
power grant @s mrt_supports:soulweaver/helpers/buffs/level5
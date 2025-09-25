execute at @a[tag=soulweaver,sort=nearest] if score @p soulLinkID = @s soulLinkID run title @s actionbar [{"selector":"@p", "color":"#65E9F7"},{"text":" has unwoven the thread from your soul","color":"#289DA3"}]
tag @s remove linked
tag @s remove removingLink
tag @s remove target
scoreboard players reset @s soulLinkID
function mrt_supports:soulweaver/buffs/revokebuffs
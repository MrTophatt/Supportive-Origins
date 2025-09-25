scoreboard players operation #temp soulLinkID = @s soulLinkID

execute as @a[tag=linked] if score @s soulLinkID = #temp soulLinkID store result score @s health run data get entity @s Health

execute at @a[tag=linked,sort=furthest] if score @p[tag=linked] soulLinkID = @s soulLinkID run title @s actionbar [{"text":"The nearest linked soul [","color":"#289DA3"},{"selector":"@p[tag=linked,limit=1,sort=nearest]","color":"#65E9F7"},{"text":"] has ","color":"#289DA3"},{"score":{"name":"@p[tag=linked]","objective":"health"},"color":"#F71414"},{"text":" HP","color":"#F71414"}]
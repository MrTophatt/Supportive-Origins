scoreboard players operation #temp soulLinkID = @s soulLinkID

execute as @a[tag=linked] if score @s soulLinkID = #temp soulLinkID run effect clear
execute as @a[tag=linked] if score @s soulLinkID = #temp soulLinkID run effect give @s regeneration 5 1
execute as @a[tag=linked] if score @s soulLinkID = #temp soulLinkID run effect give @s absorption 15 1
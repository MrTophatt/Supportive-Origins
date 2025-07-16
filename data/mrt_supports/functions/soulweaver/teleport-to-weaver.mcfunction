scoreboard players operation #temp soulLinkID = @s soulLinkID

execute at @s as @a[tag=soulweaver] if score @s soulLinkID = #temp soulLinkID run tp @a[tag=linked,limit=1,sort=nearest] @s
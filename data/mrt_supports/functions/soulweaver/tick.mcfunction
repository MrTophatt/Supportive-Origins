# For all players that do NOT have a soulLinkID score yet, set it to 0
execute as @a[tag=!linked,tag=!soulweaver] unless score @s soulLinkID matches 1.. run scoreboard players set @s soulLinkID 0
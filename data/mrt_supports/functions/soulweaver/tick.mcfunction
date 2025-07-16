# For all players that do NOT have a soulLinkID score yet, set it to 0
execute as @a unless score @s soulLinkID matches 1.. run scoreboard players set @s soulLinkID 0

# For all armor stands that do NOT have a soulLinkID score yet, set it to 0
execute as @p[tag=!linked] unless score @s soulLinkID matches 1.. run scoreboard players set @s soulLinkID 0
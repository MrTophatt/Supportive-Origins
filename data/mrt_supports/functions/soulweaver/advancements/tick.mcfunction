# Expire the short-lived Echo Sight and Unravel overlap records in every vanilla dimension.
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.EchoSeen,scores={SW.AdvEchoTTL=1..}] run scoreboard players remove @s SW.AdvEchoTTL 1
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.EchoSeen,scores={SW.AdvEchoTTL=1..}] run scoreboard players remove @s SW.AdvEchoTTL 1
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.EchoSeen,scores={SW.AdvEchoTTL=1..}] run scoreboard players remove @s SW.AdvEchoTTL 1
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.EchoSeen,scores={SW.AdvEchoTTL=..0}] run tag @s remove Supports.Soulweaver.Adv.EchoSeen
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.EchoSeen,scores={SW.AdvEchoTTL=..0}] run tag @s remove Supports.Soulweaver.Adv.EchoSeen
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.EchoSeen,scores={SW.AdvEchoTTL=..0}] run tag @s remove Supports.Soulweaver.Adv.EchoSeen

execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.Unraveled,scores={SW.AdvUnravelTTL=1..}] run scoreboard players remove @s SW.AdvUnravelTTL 1
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.Unraveled,scores={SW.AdvUnravelTTL=1..}] run scoreboard players remove @s SW.AdvUnravelTTL 1
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.Unraveled,scores={SW.AdvUnravelTTL=1..}] run scoreboard players remove @s SW.AdvUnravelTTL 1
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.Unraveled,scores={SW.AdvUnravelTTL=..0}] run tag @s remove Supports.Soulweaver.Adv.Unraveled
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.Unraveled,scores={SW.AdvUnravelTTL=..0}] run tag @s remove Supports.Soulweaver.Adv.Unraveled
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.Unraveled,scores={SW.AdvUnravelTTL=..0}] run tag @s remove Supports.Soulweaver.Adv.Unraveled

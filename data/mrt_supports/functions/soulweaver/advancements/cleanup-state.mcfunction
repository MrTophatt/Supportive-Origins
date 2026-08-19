scoreboard players operation $AdvOwner Supports.SW.ID = @s Supports.SW.ID
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.EchoSeen] if score @s SW.EchoOwner = $AdvOwner Supports.SW.ID run tag @s remove Supports.Soulweaver.Adv.EchoSeen
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.EchoSeen] if score @s SW.EchoOwner = $AdvOwner Supports.SW.ID run tag @s remove Supports.Soulweaver.Adv.EchoSeen
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.EchoSeen] if score @s SW.EchoOwner = $AdvOwner Supports.SW.ID run tag @s remove Supports.Soulweaver.Adv.EchoSeen
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.Unraveled] if score @s SW.MarkOwner = $AdvOwner Supports.SW.ID run tag @s remove Supports.Soulweaver.Adv.Unraveled
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.Unraveled] if score @s SW.MarkOwner = $AdvOwner Supports.SW.ID run tag @s remove Supports.Soulweaver.Adv.Unraveled
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.Unraveled] if score @s SW.MarkOwner = $AdvOwner Supports.SW.ID run tag @s remove Supports.Soulweaver.Adv.Unraveled
tag @s remove Supports.Soulweaver.Adv.LoneSoulFailed
tag @s remove Supports.Soulweaver.Adv.EchoExcluded
scoreboard players reset @s SW.AdvFront
scoreboard players reset @s SW.AdvFrontGrace
scoreboard players reset @s SW.AdvProtect
scoreboard players reset @s SW.AdvEchoTTL
scoreboard players reset @s SW.AdvUnravelTTL
scoreboard players reset @s SW.EchoOwner

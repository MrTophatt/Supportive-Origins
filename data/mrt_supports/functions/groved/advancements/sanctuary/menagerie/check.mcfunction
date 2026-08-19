# Count distinct eligible entity types already confirmed inside this exact Sanctuary.
scoreboard players set @s Groved.MobCount 0
execute if entity @e[type=minecraft:allay,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:axolotl,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:bat,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:bee,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:camel,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:cat,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:chicken,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:cod,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:cow,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:dolphin,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:donkey,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:fox,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:frog,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:glow_squid,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:goat,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:horse,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:llama,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:mooshroom,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:mule,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:ocelot,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:panda,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:parrot,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:pig,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:polar_bear,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:rabbit,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:salmon,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:sheep,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:skeleton_horse,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:sniffer,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:squid,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:strider,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:tadpole,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:trader_llama,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:tropical_fish,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:turtle,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:wolf,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if entity @e[type=minecraft:zombie_horse,tag=Supports.Groved.MenagerieCandidate] run scoreboard players add @s Groved.MobCount 1
execute if score @s Groved.MobCount matches ..9 run function mrt_supports:groved/advancements/sanctuary/menagerie/clear-owner-block
execute if score @s Groved.MobCount matches 10.. run function mrt_supports:groved/advancements/sanctuary/menagerie/award-owner
tag @e[tag=Supports.Groved.MenagerieCandidate] remove Supports.Groved.MenagerieCandidate

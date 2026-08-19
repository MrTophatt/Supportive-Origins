# Exclude this Weaver and only this Weaver's linked souls, matching Echo Sight's glow targeting.
tag @a[tag=Supports.Soulweaver.Adv.EchoExcluded] remove Supports.Soulweaver.Adv.EchoExcluded
scoreboard players operation $EchoOwner Supports.SW.ID = @s Supports.SW.ID
execute as @a[tag=Supports.Soulweaver.LinkedEntity] if score @s Supports.SW.ID = $EchoOwner Supports.SW.ID run tag @s add Supports.Soulweaver.Adv.EchoExcluded
tag @s add Supports.Soulweaver.Adv.EchoExcluded
execute store result score @s SW.AdvEcho run resource get @s mrt_supports:soulweaver/link_counter
scoreboard players set $EchoCount SW.AdvCount 0

# Remember everything seen for I See You, and count mobs separately for Seeing Double.
execute if score @s SW.AdvEcho matches 1 as @e[type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..16] run function mrt_supports:soulweaver/advancements/echo-detected
execute if score @s SW.AdvEcho matches 1 as @e[type=!minecraft:player,type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..16] run scoreboard players add $EchoCount SW.AdvCount 1
execute if score @s SW.AdvEcho matches 2 as @e[type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..24] run function mrt_supports:soulweaver/advancements/echo-detected
execute if score @s SW.AdvEcho matches 2 as @e[type=!minecraft:player,type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..24] run scoreboard players add $EchoCount SW.AdvCount 1
execute if score @s SW.AdvEcho matches 3 as @e[type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..32] run function mrt_supports:soulweaver/advancements/echo-detected
execute if score @s SW.AdvEcho matches 3 as @e[type=!minecraft:player,type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..32] run scoreboard players add $EchoCount SW.AdvCount 1
execute if score @s SW.AdvEcho matches 4 as @e[type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..48] run function mrt_supports:soulweaver/advancements/echo-detected
execute if score @s SW.AdvEcho matches 4 as @e[type=!minecraft:player,type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..48] run scoreboard players add $EchoCount SW.AdvCount 1
execute if score @s SW.AdvEcho matches 5.. as @e[type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..64] run function mrt_supports:soulweaver/advancements/echo-detected
execute if score @s SW.AdvEcho matches 5.. as @e[type=!minecraft:player,type=!#mrt_supports:non-living,tag=!Supports.Soulweaver.Adv.EchoExcluded,distance=..64] run scoreboard players add $EchoCount SW.AdvCount 1

execute if score $EchoCount SW.AdvCount matches 101.. run advancement grant @s only mrt_supports:soulweaver/seeing_double complete
execute if score $EchoCount SW.AdvCount matches 0 run advancement grant @s only mrt_supports:soulweaver/where_is_everyone complete

tag @a[tag=Supports.Soulweaver.Adv.EchoExcluded] remove Supports.Soulweaver.Adv.EchoExcluded

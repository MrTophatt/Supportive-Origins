execute if score @s SW.LanternY matches -560000..-540001 run particle minecraft:soul_fire_flame ~ ~-0.26 ~ 0.09375 0.078125 0.09375 0.002 1 normal @a[tag=Supports.Soulweaver.VeilBeyond]
execute if score @s SW.LanternY matches -540000..-520001 run particle minecraft:soul_fire_flame ~ ~-0.24 ~ 0.09375 0.078125 0.09375 0.002 1 normal @a[tag=Supports.Soulweaver.VeilBeyond]
execute if score @s SW.LanternY matches -520000..-500001 run particle minecraft:soul_fire_flame ~ ~-0.22 ~ 0.09375 0.078125 0.09375 0.002 1 normal @a[tag=Supports.Soulweaver.VeilBeyond]
execute if score @s SW.LanternY matches -500000..-480001 run particle minecraft:soul_fire_flame ~ ~-0.20 ~ 0.09375 0.078125 0.09375 0.002 1 normal @a[tag=Supports.Soulweaver.VeilBeyond]
execute if score @s SW.LanternY matches -480000..-460001 run particle minecraft:soul_fire_flame ~ ~-0.18 ~ 0.09375 0.078125 0.09375 0.002 1 normal @a[tag=Supports.Soulweaver.VeilBeyond]
execute if score @s SW.LanternY matches -460000..-440000 run particle minecraft:soul_fire_flame ~ ~-0.16 ~ 0.09375 0.078125 0.09375 0.002 1 normal @a[tag=Supports.Soulweaver.VeilBeyond]

execute unless score @s SW.LanternY matches -560000..-440000 run particle minecraft:soul_fire_flame ~ ~-0.20 ~ 0.09375 0.078125 0.09375 0.002 1 normal @a[tag=Supports.Soulweaver.VeilBeyond]

scoreboard players add @s SW.LanternParticle 1
execute if score @s SW.LanternParticle matches 4.. run scoreboard players set @s SW.LanternParticle 0

execute if score @s SW.LanternY matches -560000..-540001 positioned ~ ~-0.26 ~ run function mrt_supports:soulweaver/strands/strand-particles
execute if score @s SW.LanternY matches -540000..-520001 positioned ~ ~-0.24 ~ run function mrt_supports:soulweaver/strands/strand-particles
execute if score @s SW.LanternY matches -520000..-500001 positioned ~ ~-0.22 ~ run function mrt_supports:soulweaver/strands/strand-particles
execute if score @s SW.LanternY matches -500000..-480001 positioned ~ ~-0.20 ~ run function mrt_supports:soulweaver/strands/strand-particles
execute if score @s SW.LanternY matches -480000..-460001 positioned ~ ~-0.18 ~ run function mrt_supports:soulweaver/strands/strand-particles
execute if score @s SW.LanternY matches -460000..-440000 positioned ~ ~-0.16 ~ run function mrt_supports:soulweaver/strands/strand-particles
execute unless score @s SW.LanternY matches -560000..-440000 positioned ~ ~-0.20 ~ run function mrt_supports:soulweaver/strands/strand-particles

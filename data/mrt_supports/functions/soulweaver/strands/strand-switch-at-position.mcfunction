# Renewal
execute if score @s SW.LanternStrand matches 0 run playsound minecraft:item.bone_meal.use master @a ~ ~ ~ 0.65 1.25
execute if score @s SW.LanternStrand matches 0 positioned ^0.34 ^-0.15 ^0 run particle minecraft:happy_villager ~ ~ ~ 0 1 0 0.030 0 normal
execute if score @s SW.LanternStrand matches 0 positioned ^0.17 ^-0.06 ^0.29 run particle minecraft:happy_villager ~ ~ ~ 0 1 0 0.030 0 normal
execute if score @s SW.LanternStrand matches 0 positioned ^-0.17 ^0.03 ^0.29 run particle minecraft:happy_villager ~ ~ ~ 0 1 0 0.030 0 normal
execute if score @s SW.LanternStrand matches 0 positioned ^-0.34 ^0.12 ^0 run particle minecraft:happy_villager ~ ~ ~ 0 1 0 0.030 0 normal
execute if score @s SW.LanternStrand matches 0 positioned ^-0.17 ^0.21 ^-0.29 run particle minecraft:happy_villager ~ ~ ~ 0 1 0 0.030 0 normal
execute if score @s SW.LanternStrand matches 0 positioned ^0.17 ^0.30 ^-0.29 run particle minecraft:happy_villager ~ ~ ~ 0 1 0 0.030 0 normal

# Warding
execute if score @s SW.LanternStrand matches 1 run playsound minecraft:item.shield.block master @a ~ ~ ~ 0.55 1.35
execute if score @s SW.LanternStrand matches 1 positioned ^0.50 ^0.04 ^0 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal
execute if score @s SW.LanternStrand matches 1 positioned ^0.35 ^0.04 ^0.35 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal
execute if score @s SW.LanternStrand matches 1 positioned ^0 ^0.04 ^0.50 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal
execute if score @s SW.LanternStrand matches 1 positioned ^-0.35 ^0.04 ^0.35 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal
execute if score @s SW.LanternStrand matches 1 positioned ^-0.50 ^0.04 ^0 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal
execute if score @s SW.LanternStrand matches 1 positioned ^-0.35 ^0.04 ^-0.35 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal
execute if score @s SW.LanternStrand matches 1 positioned ^0 ^0.04 ^-0.50 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal
execute if score @s SW.LanternStrand matches 1 positioned ^0.35 ^0.04 ^-0.35 run particle minecraft:sculk_soul ~ ~ ~ 0 1 0 0.004 0 normal

# Fervor
execute if score @s SW.LanternStrand matches 2 run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 0.50 1.45
execute if score @s SW.LanternStrand matches 2 positioned ^0.46 ^0.02 ^0 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal
execute if score @s SW.LanternStrand matches 2 positioned ^-0.46 ^0.02 ^0 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal
execute if score @s SW.LanternStrand matches 2 positioned ^0 ^0.02 ^0.46 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal
execute if score @s SW.LanternStrand matches 2 positioned ^0 ^0.02 ^-0.46 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal
execute if score @s SW.LanternStrand matches 2 positioned ^0.32 ^0.14 ^0.32 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal
execute if score @s SW.LanternStrand matches 2 positioned ^-0.32 ^0.14 ^0.32 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal
execute if score @s SW.LanternStrand matches 2 positioned ^-0.32 ^0.14 ^-0.32 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal
execute if score @s SW.LanternStrand matches 2 positioned ^0.32 ^0.14 ^-0.32 run particle minecraft:small_flame ~ ~ ~ 0 1 0 0.025 0 normal

# Force
execute if score @s SW.LanternStrand matches 3 run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.55 1.50
execute if score @s SW.LanternStrand matches 3 positioned ^0.30 ^0.02 ^0 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 3 positioned ^0 ^0.02 ^0.30 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 3 positioned ^-0.30 ^0.02 ^0 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 3 positioned ^0 ^0.02 ^-0.30 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 3 positioned ^0.36 ^0.14 ^0.36 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 3 positioned ^-0.36 ^0.14 ^0.36 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 3 positioned ^-0.36 ^0.14 ^-0.36 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 3 positioned ^0.36 ^0.14 ^-0.36 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 0 0 normal

# Resolve
execute if score @s SW.LanternStrand matches 4 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.55 1.65
execute if score @s SW.LanternStrand matches 4 positioned ^0.52 ^0.05 ^0 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^0.37 ^0.05 ^0.37 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^0 ^0.05 ^0.52 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^-0.37 ^0.05 ^0.37 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^-0.52 ^0.05 ^0 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^-0.37 ^0.05 ^-0.37 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^0 ^0.05 ^-0.52 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^0.37 ^0.05 ^-0.37 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^0.34 ^0.20 ^0 run particle minecraft:end_rod ~ ~ ~ 0 1 0 0.010 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^-0.34 ^0.20 ^0 run particle minecraft:end_rod ~ ~ ~ 0 1 0 0.010 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^0 ^0.20 ^0.34 run particle minecraft:end_rod ~ ~ ~ 0 1 0 0.010 0 normal
execute if score @s SW.LanternStrand matches 4 positioned ^0 ^0.20 ^-0.34 run particle minecraft:end_rod ~ ~ ~ 0 1 0 0.010 0 normal
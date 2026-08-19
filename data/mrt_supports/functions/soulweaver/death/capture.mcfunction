# The live inventory tags survive death long enough to choose the respawn state.
tag @s remove Supports.Soulweaver.ShortFracture
tag @s remove Supports.Soulweaver.LongFracture
tag @s remove Supports.Soulweaver.SoulFracture

# Soul lanterns win when both kinds are present and grant the shortest fracture.
scoreboard players set #DeathItemConsumed ml.tmp 0
execute if entity @s[tag=Supports.Soulweaver.HasSoulLantern] store result score #DeathItemConsumed ml.tmp run clear @s minecraft:soul_lantern 1
execute if entity @s[tag=Supports.Soulweaver.HasSoulLantern] if score #DeathItemConsumed ml.tmp matches 0 at @s as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:soul_lantern"}},distance=..3,sort=nearest,limit=1] run function mrt_supports:soulweaver/death/consume-dropped-lantern

scoreboard players set #DeathItemConsumed ml.tmp 0
execute unless entity @s[tag=Supports.Soulweaver.HasSoulLantern] if entity @s[tag=Supports.Soulweaver.HasLantern] store result score #DeathItemConsumed ml.tmp run clear @s minecraft:lantern 1
execute unless entity @s[tag=Supports.Soulweaver.HasSoulLantern] if entity @s[tag=Supports.Soulweaver.HasLantern] if score #DeathItemConsumed ml.tmp matches 0 at @s as @e[type=minecraft:item,nbt={Age:0s,Item:{id:"minecraft:lantern"}},distance=..3,sort=nearest,limit=1] run function mrt_supports:soulweaver/death/consume-dropped-lantern

execute if entity @s[tag=Supports.Soulweaver.HasSoulLantern] run tag @s add Supports.Soulweaver.SoulFracture
execute unless entity @s[tag=Supports.Soulweaver.HasSoulLantern] if entity @s[tag=Supports.Soulweaver.HasLantern] run tag @s add Supports.Soulweaver.ShortFracture
execute unless entity @s[tag=Supports.Soulweaver.HasSoulLantern] unless entity @s[tag=Supports.Soulweaver.HasLantern] run tag @s add Supports.Soulweaver.LongFracture

# A lantern-shortened fracture counts before the inventory tracking tags are cleared.
execute if entity @s[tag=Supports.Soulweaver.SoulFracture] run advancement grant @s only mrt_supports:soulweaver/a_lot_less_broken complete
execute if entity @s[tag=Supports.Soulweaver.ShortFracture] run advancement grant @s only mrt_supports:soulweaver/a_little_less_broken complete

tag @s remove Supports.Soulweaver.HasSoulLantern
tag @s remove Supports.Soulweaver.HasLantern

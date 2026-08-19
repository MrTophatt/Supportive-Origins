data merge entity @s {Health:2.0f}
effect give @s minecraft:weakness 30 1 true
effect give @s minecraft:mining_fatigue 30 1 true
effect give @s minecraft:slowness 18 2 true
effect give @s minecraft:blindness 8 0 true
execute at @s run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~1 ~ 0.8 0.7
scoreboard players operation $GuardianOwner Supports.SW.ID = @s Supports.SW.ID
execute as @a[tag=Supports.Soulweaver.GuardianSaved,limit=1] run scoreboard players operation $GuardianSavedLink Supports.SW.LinkID = @s Supports.SW.LinkID
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.ID = $GuardianOwner Supports.SW.ID if score @s Supports.SW.LinkID = $GuardianSavedLink Supports.SW.LinkID run kill @s

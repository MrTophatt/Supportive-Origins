# A standard splash-water potion has no vanilla damage callback for ordinary players,
# so detect it once as it enters a Soul Weaver's hit radius.
execute as @a[tag=Supports.Soulweaver.Owner] at @s as @e[type=minecraft:potion,tag=!Supports.Soulweaver.WaterSplashProcessed,distance=..1.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:splash_potion",tag:{Potion:"minecraft:water"}}}] at @s run function mrt_supports:soulweaver/environment/water-splash

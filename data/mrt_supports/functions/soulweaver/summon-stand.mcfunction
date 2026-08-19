function mrt_supports:soulweaver/ensure-id
tag @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewStand] remove Supports.Soulweaver.NewStand
execute in minecraft:overworld run tag @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewStand] remove Supports.Soulweaver.NewStand
scoreboard players add $NextLink Supports.SW.LinkID 1
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["Supports.Soulweaver.NewStand","Supports.Soulweaver.Linked"],DisabledSlots:4144959}
scoreboard players operation @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewStand,sort=nearest,limit=1] Supports.SW.ID = @s Supports.SW.ID
scoreboard players operation @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewStand,sort=nearest,limit=1] Supports.SW.LinkID = $NextLink Supports.SW.LinkID
power grant @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.NewStand,sort=nearest,limit=1] mrt_supports:soulweaver/given/stand-power mrt_supports:soulweaver

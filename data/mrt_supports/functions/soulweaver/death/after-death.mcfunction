# Stands are authoritative, so killing every stand owned by this Weaver severs offline links too.
scoreboard players operation $DeadWeaver Supports.SW.ID = @s Supports.SW.ID
execute as @a[tag=Supports.Soulweaver.LinkedEntity] if score @s Supports.SW.ID = $DeadWeaver Supports.SW.ID run function mrt_supports:soulweaver/validation/cleanup-linked-self
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.ID = $DeadWeaver Supports.SW.ID run kill @s
function mrt_supports:soulweaver/buffs/clear
tag @s remove Supports.Soulweaver.Adv.LoneSoulFailed

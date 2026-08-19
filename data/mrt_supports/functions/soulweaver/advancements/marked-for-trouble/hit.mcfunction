# The marked target is @s. Count every authoritative link stand plus the owning Weaver.
scoreboard players operation $MarkedOwner SW.MarkOwner = @s SW.MarkOwner
scoreboard players operation $MarkedID SW.MarkID = @s SW.MarkID
scoreboard players set $MarkedRequired SW.AdvCount 1
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.ID = $MarkedOwner SW.MarkOwner run scoreboard players add $MarkedRequired SW.AdvCount 1

scoreboard players set $MarkedHits SW.AdvCount 0
execute as @a[tag=Supports.Soulweaver.Owner] if score @s Supports.SW.ID = $MarkedOwner SW.MarkOwner if score @s SW.MarkHitID = $MarkedID SW.MarkID run scoreboard players add $MarkedHits SW.AdvCount 1
execute as @a[tag=Supports.Soulweaver.LinkedEntity] if score @s Supports.SW.ID = $MarkedOwner SW.MarkOwner if score @s SW.MarkHitID = $MarkedID SW.MarkID run scoreboard players add $MarkedHits SW.AdvCount 1

execute if score $MarkedHits SW.AdvCount >= $MarkedRequired SW.AdvCount as @a[tag=Supports.Soulweaver.Owner] if score @s Supports.SW.ID = $MarkedOwner SW.MarkOwner run advancement grant @s only mrt_supports:soulweaver/marked_for_trouble complete

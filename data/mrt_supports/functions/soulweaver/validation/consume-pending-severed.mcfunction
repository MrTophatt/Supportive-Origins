tag @s add Supports.Soulweaver.PendingRecipient
scoreboard players operation $Notify Supports.SW.ID = @s Supports.SW.ID
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.PendingSevered] if score @s Supports.SW.ID = $Notify Supports.SW.ID run tellraw @a[tag=Supports.Soulweaver.PendingRecipient,limit=1] [{"nbt":"CustomName","entity":"@s","interpret":true},{"text":" has severed the thread","color":"#21AEFF","bold":true}]
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.PendingSevered] if score @s Supports.SW.ID = $Notify Supports.SW.ID run kill @s
tag @s remove Supports.Soulweaver.PendingRecipient
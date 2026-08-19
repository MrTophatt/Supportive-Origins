# Runs as the Weaver at each ray sample. A 0.7-block radius covers most of the player's field of view at lantern range.
execute if score $LanternLookHit SW.AdvCount matches 0 as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.LanternCarrier,distance=..0.7] if score @s Supports.SW.ID = $LanternLookOwner Supports.SW.ID run scoreboard players set $LanternLookHit SW.AdvCount 1

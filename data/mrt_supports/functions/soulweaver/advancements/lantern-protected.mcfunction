# Runs as the lantern carrier after its movement update.
# The tuck is complete only at full chest blend and once the orbit has centered on the player's chest.
scoreboard players operation $LanternAdvOwner Supports.SW.ID = @s Supports.SW.ID
scoreboard players set $ProtectedTuck SW.AdvCount 0
execute if entity @s[tag=Supports.Soulweaver.LanternFollowChest,tag=!Supports.Soulweaver.UnravelTuck] if score @s SW.LanternFollowMode matches 4 if score @s SW.LanternChestBlend matches 10 if score @s SW.LanternDelta matches -100..100 run scoreboard players set $ProtectedTuck SW.AdvCount 1
execute as @a[tag=Supports.Soulweaver.Owner,advancements={mrt_supports:soulweaver/protected_light=false}] if score @s Supports.SW.ID = $LanternAdvOwner Supports.SW.ID if score $ProtectedTuck SW.AdvCount matches 1 run scoreboard players add @s SW.AdvProtect 1
execute as @a[tag=Supports.Soulweaver.Owner,advancements={mrt_supports:soulweaver/protected_light=false}] if score @s Supports.SW.ID = $LanternAdvOwner Supports.SW.ID if score $ProtectedTuck SW.AdvCount matches 0 run scoreboard players set @s SW.AdvProtect 0
execute as @a[tag=Supports.Soulweaver.Owner,scores={SW.AdvProtect=20..},advancements={mrt_supports:soulweaver/protected_light=false}] if score @s Supports.SW.ID = $LanternAdvOwner Supports.SW.ID run advancement grant @s only mrt_supports:soulweaver/protected_light complete

# Bump the generation on the player so recovery never depends on the unloaded old lantern.
advancement revoke @s only mrt_supports:dimension_changed

execute if entity @s[tag=Supports.Soulweaver.LanternOwnerActive] run scoreboard players add @s SW.LanternGeneration 1
execute if entity @s[tag=Supports.Soulweaver.LanternOwnerActive] run tag @s add Supports.Soulweaver.LanternForceRespawn

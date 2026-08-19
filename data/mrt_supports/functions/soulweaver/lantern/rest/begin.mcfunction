# Begin finding a resting place
tag @s add Supports.Soulweaver.LanternRestReady
scoreboard players set @s SW.LanternRest 1
scoreboard players set @s SW.AdvFront 0
scoreboard players set @s SW.AdvFrontGrace 0
scoreboard players set @s SW.AdvProtect 0
advancement grant @s only mrt_supports:soulweaver/tired_light complete

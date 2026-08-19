# Save new projectile velocity
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s Groved.MotionX
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s Groved.MotionY
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s Groved.MotionZ

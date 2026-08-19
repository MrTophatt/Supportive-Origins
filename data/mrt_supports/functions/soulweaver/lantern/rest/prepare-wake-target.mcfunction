# Copy the live safe follow pose onto the marker without snapping the carrier there.
scoreboard players operation @s SW.LanternAngle = $LanternWakeAngle SW.LanternAngle
scoreboard players operation @s SW.LanternChestBlend = $LanternWakeBlend SW.LanternChestBlend
scoreboard players operation @s SW.LanternPoseHeight = $LanternWakePoseHeight SW.LanternPoseHeight
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s SW.LanternAngle

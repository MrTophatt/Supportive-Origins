scoreboard players add $NextMark SW.MarkID 1
execute if score $NextMark SW.MarkID matches ..0 run scoreboard players set $NextMark SW.MarkID 1
scoreboard players operation @s SW.MarkHitID = $NextMark SW.MarkID

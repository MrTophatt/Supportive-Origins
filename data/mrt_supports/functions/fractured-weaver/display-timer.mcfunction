execute store result score @s SW.FractureTime run resource get @s mrt_supports:fractured-weaver/timer_timer
scoreboard players operation @s SW.FracMin = @s SW.FractureTime
scoreboard players operation @s SW.FracMin /= #TwelveHundred ml.tmp
scoreboard players operation @s SW.FracSec = @s SW.FractureTime
scoreboard players operation @s SW.FracSec %= #TwelveHundred ml.tmp
scoreboard players operation @s SW.FracSec /= #Twenty ml.tmp
scoreboard players operation @s SW.FracMs = @s SW.FractureTime
scoreboard players operation @s SW.FracMs %= #Twenty ml.tmp
scoreboard players operation @s SW.FracMs /= #Two ml.tmp

execute if score @s SW.FractureTime matches 1200.. run title @s actionbar [{"text":"Soul reweaving in ","color":"#21AEFF"},{"score":{"name":"@s","objective":"SW.FracMin"},"color":"#65E9F7","bold":true},{"text":"m ","color":"#21AEFF"},{"score":{"name":"@s","objective":"SW.FracSec"},"color":"#65E9F7","bold":true},{"text":"s","color":"#21AEFF"}]
execute if score @s SW.FractureTime matches 1..1199 run title @s actionbar [{"text":"Soul reweaving in ","color":"#21AEFF"},{"score":{"name":"@s","objective":"SW.FracSec"},"color":"#65E9F7","bold":true},{"text":".","color":"#65E9F7","bold":true},{"score":{"name":"@s","objective":"SW.FracMs"},"color":"#65E9F7","bold":true},{"text":"s","color":"#21AEFF"}]
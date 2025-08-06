execute align xyz run summon block_display ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["shown"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.05f,0.05f,0.05f],scale:[0.9f,0.9f,0.9f]},block_state:{Name:"minecraft:obsidian"}}
kill @e[type=armor_stand,tag=shown,distance=..1,limit=1]
summon armor_stand ~ ~-0.5 ~ {NoGravity:1b,Glowing:1b,Marker:1b,Invisible:1b,Tags:["shown"]}
power grant @e[type=minecraft:armor_stand,tag=shown,limit=1,sort=nearest] mrt_supports:alpha2/ore-highlight
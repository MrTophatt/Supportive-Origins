# Remove old Sanctuary and create a new one
function mrt_supports:groved/sanctuary/lifecycle/kill_owned_anchor
function mrt_supports:groved/advancements/sanctuary/safe-haven/reset
scoreboard players add $NextOwnerID Groved.OwnerID 1
scoreboard players operation @s Groved.OwnerID = $NextOwnerID Groved.OwnerID
tag @s add Supports.Groved.SanctuaryDeployed
tag @e[type=minecraft:armor_stand,tag=Supports.Groved.NewSanctuaryAnchor] remove Supports.Groved.NewSanctuaryAnchor
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["Supports.Groved.SanctuaryAnchor","Supports.Groved.NewSanctuaryAnchor"]}
scoreboard players operation @e[type=minecraft:armor_stand,tag=Supports.Groved.NewSanctuaryAnchor,sort=nearest,limit=1] Groved.OwnerID = @s Groved.OwnerID
power grant @e[type=minecraft:armor_stand,tag=Supports.Groved.NewSanctuaryAnchor,sort=nearest,limit=1] mrt_supports:groved/given/sanctuary-anchor mrt_supports:groved_sanctuary_anchor
tag @e[type=minecraft:armor_stand,tag=Supports.Groved.NewSanctuaryAnchor,sort=nearest,limit=1] remove Supports.Groved.NewSanctuaryAnchor

# Recount from the owner too, since zero links means there may be no stand left to do it.
scoreboard players operation $BuffOwner Supports.SW.ID = @s Supports.SW.ID
scoreboard players set $BuffCount SW.LinkCount 0
execute in minecraft:overworld as @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] if score @s Supports.SW.ID = $BuffOwner Supports.SW.ID run scoreboard players add $BuffCount SW.LinkCount 1
execute if score $BuffCount SW.LinkCount matches 6.. run scoreboard players set $BuffCount SW.LinkCount 5
function mrt_supports:soulweaver/buffs/apply-count

# Every successful reflection is retained on the projectile for Trickshot! detection.
tag @s add Supports.Groved.Ricocheted

# Safe Haven counts distinct projectile entities, so repeated bounces by one shot count once.
scoreboard players add @s Groved.SafeSess 0
execute if score @s Groved.TrackSide matches 0 unless score @s Groved.SafeSess = @s Groved.TrackedID run function mrt_supports:groved/advancements/sanctuary/safe-haven/check

# OW! requires the owner to have fired from the inside of their own Sanctuary.
execute if score @s Groved.TrackSide matches 1 run function mrt_supports:groved/advancements/sanctuary/ow/mark

# Figure out which side the projectile is coming from
scoreboard players add @s Groved.TrackedID 0
scoreboard players add @s Groved.TrackTTL 0
function mrt_supports:groved/sanctuary/ricochet/tracking/sample

# Stop tracking when projectile moves away
execute if score @s Groved.TrackedID = @s Groved.AnchorSel unless score @s Groved.InRange matches 1 run function mrt_supports:groved/sanctuary/ricochet/tracking/reset

# Save the projectile's starting side and position
execute if score @s Groved.TrackedID matches 0 if score @s Groved.InRange matches 1 run scoreboard players operation @s Groved.TrackedID = @s Groved.AnchorSel
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.TrackTTL matches 0 run scoreboard players operation @s Groved.TrackSide = @s Groved.CrossedIn
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.TrackTTL matches 0 run scoreboard players operation @s Groved.SafeX = @s Groved.CrossX
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.TrackTTL matches 0 run scoreboard players operation @s Groved.SafeY = @s Groved.CrossY
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.TrackTTL matches 0 run scoreboard players operation @s Groved.SafeZ = @s Groved.CrossZ

# Update the last safe position
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 run scoreboard players set @s Groved.TrackTTL 4
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.CrossedIn = @s Groved.TrackSide run scoreboard players operation @s Groved.SafeX = @s Groved.CrossX
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.CrossedIn = @s Groved.TrackSide run scoreboard players operation @s Groved.SafeY = @s Groved.CrossY
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.CrossedIn = @s Groved.TrackSide run scoreboard players operation @s Groved.SafeZ = @s Groved.CrossZ

# Bounce after projectile crosses the wall
execute if score @s Groved.TrackedID = @s Groved.AnchorSel if score @s Groved.InRange matches 1 if score @s Groved.HitGuard matches 0 unless score @s Groved.CrossedIn = @s Groved.TrackSide run function mrt_supports:groved/sanctuary/ricochet/collision

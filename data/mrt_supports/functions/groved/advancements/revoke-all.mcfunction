# Remove the entire visible Groved advancement tree.
advancement revoke @s from mrt_supports:groved/root

# Clear hidden detector progress that is not parented to the visible tree.
advancement revoke @s only mrt_supports:detectors/groved/bred_inside
advancement revoke @s only mrt_supports:detectors/groved/ow_hit
advancement revoke @s only mrt_supports:detectors/groved/ricochet_player_hit
advancement revoke @s only mrt_supports:detectors/groved/trickshot_hit

# Reset custom progress so choosing Groved again starts every advancement fresh.
function mrt_supports:groved/advancements/revoked/safe-haven
function mrt_supports:groved/advancements/revoked/love-is-in-the-air
function mrt_supports:groved/advancements/revoked/menagerie
function mrt_supports:groved/advancements/revoked/trickshot
function mrt_supports:groved/advancements/revoked/fruitful-harvest

# Revocation caused by an origin change should not retain retry blockers.
tag @s remove Supports.Groved.Adv.SafeHavenBlocked
tag @s remove Supports.Groved.Adv.MenagerieBlocked
tag @s remove Supports.Groved.LifeBlessingTracking
tag @s remove Supports.Groved.OwShooter
scoreboard players set @s Groved.OwTTL 0

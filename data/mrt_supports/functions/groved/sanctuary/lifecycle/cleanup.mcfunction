# Reset owner when Sanctuary is missing
function mrt_supports:groved/sanctuary/lifecycle/kill_owned_anchor
tag @s remove Supports.Groved.SanctuaryDeployed
tag @s remove Supports.Groved.SanctuaryAnchorMissing
function mrt_supports:groved/advancements/sanctuary/safe-haven/reset

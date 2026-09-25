function mrt_supports:soulweaver/resonance/clear-link
origin set @s mrt_supports:strands origins:empty
apoli:power revoke @s mrt_supports:soulweaver/given/guarded-soul from mrt_supports:guardian_weaver
function mrt_supports:soulweaver/guardian/clear-guarded-soul
scoreboard players reset @s Supports.SW.ID
scoreboard players reset @s Supports.SW.LinkID
scoreboard players reset @s SW.Selected
tag @s remove Supports.Soulweaver.LinkedEntity
tag @s remove Supports.Soulweaver.LinkedFar
tag @s remove Supports.Soulweaver.SelectionCandidate
tag @s remove Supports.Soulweaver.HasValidationStand
function mrt_supports:soulweaver/buffs/clear
apoli:power revoke @s mrt_supports:soulweaver/given/linked-player from mrt_supports:soulweaver

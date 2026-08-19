kill @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.DistanceTracker]
kill @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.IndicatorCarrier]
kill @e[type=minecraft:marker,tag=Supports.Soulweaver.CurrentIndicatorRaySource]
kill @e[type=minecraft:marker,tag=Supports.Soulweaver.SelectionSampler]
tag @e[tag=Supports.Soulweaver.SelectionCandidate] remove Supports.Soulweaver.SelectionCandidate
tag @e[tag=Supports.Soulweaver.IndicatorRayCandidate] remove Supports.Soulweaver.IndicatorRayCandidate
function mrt_supports:soulweaver/selection/close/reset-scratch

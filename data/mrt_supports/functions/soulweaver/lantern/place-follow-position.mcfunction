function mrt_supports:soulweaver/lantern/update-chest-blend
execute if entity @s[tag=Supports.Soulweaver.LanternChestExit] run function mrt_supports:soulweaver/lantern/position-chest-exit
execute unless entity @s[tag=Supports.Soulweaver.LanternChestExit] run function mrt_supports:soulweaver/lantern/validate-orbit-step
execute unless entity @s[tag=Supports.Soulweaver.LanternChestExit] run function mrt_supports:soulweaver/lantern/position-at-orbit
function mrt_supports:soulweaver/advancements/lantern-protected

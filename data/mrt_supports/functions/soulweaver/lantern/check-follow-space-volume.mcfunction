# Probe the lantern's rough volume, not just its center, or corners clip through glass.
tag @s add Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~ ~ ~ #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~0.25 ~ ~ #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~-0.25 ~ ~ #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~ ~ ~0.25 #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~ ~ ~-0.25 #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~0.2 ~ ~0.2 #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~0.2 ~ ~-0.2 #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~-0.2 ~ ~0.2 #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~-0.2 ~ ~-0.2 #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~ ~0.35 ~ #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe
execute unless block ~ ~-0.35 ~ #mrt_supports:lantern_empty run tag @s remove Supports.Soulweaver.LanternFollowSpotSafe

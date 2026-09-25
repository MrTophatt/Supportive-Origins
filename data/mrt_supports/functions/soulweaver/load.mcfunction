scoreboard objectives add Supports.SW.ID dummy
scoreboard objectives add Supports.SW.LinkID dummy
scoreboard objectives add SW.Distance dummy
scoreboard objectives add SW.ax dummy
scoreboard objectives add SW.ay dummy
scoreboard objectives add SW.az dummy
scoreboard objectives add SW.px dummy
scoreboard objectives add SW.py dummy
scoreboard objectives add SW.pz dummy
scoreboard objectives add SW.dx dummy
scoreboard objectives add SW.dy dummy
scoreboard objectives add SW.dz dummy
scoreboard objectives add SW.Selected dummy
scoreboard objectives add SW.LanternY dummy
scoreboard objectives add SW.LanternStrand dummy
scoreboard objectives add SW.LanternParticle dummy
scoreboard objectives add SW.ResonantRayStep dummy
scoreboard objectives add ml.phase100 dummy
scoreboard objectives add ml.bob_phase dummy
scoreboard objectives add ml.sin dummy
scoreboard objectives add ml.tmp dummy
scoreboard objectives add speed.bob dummy
scoreboard objectives add SW.LanternAngle dummy
scoreboard objectives add SW.LanternTargetAngle dummy
scoreboard objectives add SW.LanternDelta dummy
scoreboard objectives add SW.LanternVel dummy
scoreboard objectives add SW.LanternDesiredVel dummy
scoreboard objectives add SW.LanternVelDiff dummy
scoreboard objectives add SW.LanternRest dummy
scoreboard objectives add SW.LanternRise dummy
scoreboard objectives add SW.LanternMax dummy
scoreboard objectives add SW.LanternYMax dummy
scoreboard objectives add SW.LanternChestBlend dummy
scoreboard objectives add SW.LanternSafeAngle dummy
scoreboard objectives add SW.LanternSafeBlend dummy
scoreboard objectives add SW.LanternFollowMode dummy
scoreboard objectives add SW.LanternPathMode dummy
scoreboard objectives add SW.LanternProposedAngle dummy
scoreboard objectives add SW.LanternRadialVel dummy
scoreboard objectives add SW.LanternPoseHeight dummy
scoreboard objectives add SW.LinkCount dummy
scoreboard objectives add SW.BuffLevel dummy
scoreboard objectives add SW.StrandLinks dummy
scoreboard objectives add SW.Health dummy
scoreboard objectives add SW.GuardianID dummy
scoreboard objectives add SW.LanternGeneration dummy
scoreboard objectives add SW.FractureTime dummy
scoreboard objectives add SW.FracMin dummy
scoreboard objectives add SW.FracSec dummy
scoreboard objectives add SW.FracMs dummy
scoreboard objectives add SW.ReweaveFX dummy
scoreboard objectives add SW.UnravelHits dummy
scoreboard objectives add SW.AdvRealm dummy
scoreboard objectives add SW.AdvStrand dummy
scoreboard objectives add SW.AdvEcho dummy
scoreboard objectives add SW.AdvCount dummy
scoreboard objectives add SW.AdvFront dummy
scoreboard objectives add SW.AdvFrontGrace dummy
scoreboard objectives add SW.AdvProtect dummy
scoreboard objectives add SW.AdvEchoTTL dummy
scoreboard objectives add SW.AdvUnravelTTL dummy
scoreboard objectives add SW.EchoOwner dummy
scoreboard objectives add SW.MarkID dummy
scoreboard objectives add SW.MarkOwner dummy
scoreboard objectives add SW.MarkHitID dummy
function mrt_supports:soulweaver/selection/reload-cleanup
# Clear tags left by the retired veil ambush advancement logic.
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.VeilKillWindow] run tag @s remove Supports.Soulweaver.Adv.VeilKillWindow
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.VeilKillWindow] run tag @s remove Supports.Soulweaver.Adv.VeilKillWindow
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.VeilKillWindow] run tag @s remove Supports.Soulweaver.Adv.VeilKillWindow
execute in minecraft:overworld as @e[tag=Supports.Soulweaver.Adv.VeilSneaked] run tag @s remove Supports.Soulweaver.Adv.VeilSneaked
execute in minecraft:the_nether as @e[tag=Supports.Soulweaver.Adv.VeilSneaked] run tag @s remove Supports.Soulweaver.Adv.VeilSneaked
execute in minecraft:the_end as @e[tag=Supports.Soulweaver.Adv.VeilSneaked] run tag @s remove Supports.Soulweaver.Adv.VeilSneaked
# Drop stale link buffs on reload; surviving link stands rebuild the correct tier.
execute as @a run function mrt_supports:soulweaver/buffs/clear
execute in minecraft:overworld run forceload add 0 0
scoreboard players add $Next Supports.SW.ID 0
scoreboard players add $NextLink Supports.SW.LinkID 0
scoreboard players add $NextMark SW.MarkID 0
scoreboard players set #k100 ml.tmp 100
scoreboard players set #LanternBobAmp SW.LanternY 6
scoreboard players set #LanternBobBase SW.LanternY -500000
scoreboard players set #LanternMaxVel SW.LanternAngle 600
scoreboard players set #LanternMinVel SW.LanternAngle -600
scoreboard players set #LanternYawMaxVel SW.LanternAngle 900
scoreboard players set #LanternYawMinVel SW.LanternAngle -900
scoreboard players set #LanternAccel SW.LanternAngle 40
scoreboard players set #LanternNegAccel SW.LanternAngle -40
scoreboard players set #LanternYawBrake SW.LanternAngle 80
scoreboard players set #LanternYawNegBrake SW.LanternAngle -80
scoreboard players set #LanternSlowDiv SW.LanternAngle 3
scoreboard players set #LanternShoulderArc SW.LanternAngle 12340
scoreboard players set #LanternHalfShoulderArc SW.LanternAngle 6170
scoreboard players set #LanternFrontArc SW.LanternAngle 11830
scoreboard players set #WakeBase SW.LanternMax 300
scoreboard players set #WakeScale SW.LanternMax 4
scoreboard players set #WakeCap SW.LanternMax 100000
scoreboard players set #WakeAccelDiv SW.LanternMax 4
scoreboard players set #WakeMinAccel SW.LanternMax 50
scoreboard players set #WakeFar2 SW.LanternMax 1000
scoreboard players set #WakeFar5 SW.LanternMax 2000
scoreboard players set #WakeFar20 SW.LanternMax 5000
scoreboard players set #WakeFar50 SW.LanternMax 6000
scoreboard players set #WakeFar100 SW.LanternMax 12000
scoreboard players set #WakeFar250 SW.LanternMax 30000
scoreboard players set #WakeFar1000 SW.LanternMax 100000
scoreboard players set #WakeYBase SW.LanternYMax 120
scoreboard players set #WakeYScale SW.LanternYMax 2
scoreboard players set #WakeYDistanceDiv SW.LanternYMax 5
scoreboard players set #WakeYCap SW.LanternYMax 20000
scoreboard players set #WakeYAccelDiv SW.LanternYMax 8
scoreboard players set #WakeYMinAccel SW.LanternYMax 10
scoreboard players set #NegOne ml.tmp -1
scoreboard players set #Twenty ml.tmp 20
scoreboard players set #Two ml.tmp 2
scoreboard players set #TwelveHundred ml.tmp 1200
execute in minecraft:overworld run apoli:power grant @e[type=minecraft:armor_stand,tag=Supports.Soulweaver.Linked] mrt_supports:soulweaver/given/stand-power mrt_supports:soulweaver

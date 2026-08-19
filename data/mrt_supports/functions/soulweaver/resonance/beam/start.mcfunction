# Resonance always draws the complete strand, including while the Soul Weaver is veiled.
scoreboard players set @s SW.ResonantRayStep 0
execute at @s facing entity @a[tag=Supports.Soulweaver.ResonantBeamTarget,sort=nearest,limit=1] feet positioned ^ ^ ^0.15 run function mrt_supports:soulweaver/resonance/beam/step

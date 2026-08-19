# One full bob takes 30 ticks, the sine table keeps the samples cheap and predictable.
tag @s remove Supports.Soulweaver.LanternRestBobStopped
scoreboard players add @s ml.phase100 0
execute unless score @s speed.bob matches 1.. run scoreboard players set @s speed.bob 1200
scoreboard players operation @s ml.phase100 += @s speed.bob
execute if score @s ml.phase100 matches 36000.. run scoreboard players remove @s ml.phase100 36000

scoreboard players operation @s ml.bob_phase = @s ml.phase100
scoreboard players operation @s ml.bob_phase /= #k100 ml.tmp
function mrt_supports:soulweaver/lantern/set-sin

# translation Y = -0.5 + sin(phase) * 0.06
scoreboard players operation @s SW.LanternY = @s ml.sin
scoreboard players operation @s SW.LanternY *= #LanternBobAmp SW.LanternY
scoreboard players operation @s SW.LanternY += #LanternBobBase SW.LanternY

data merge entity @s {start_interpolation:0,interpolation_duration:2}
execute store result entity @s transformation.translation[1] float 0.000001 run scoreboard players get @s SW.LanternY

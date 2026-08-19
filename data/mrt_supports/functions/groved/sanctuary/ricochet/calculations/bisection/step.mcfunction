# Move closer to the exact hit point
scoreboard players operation @s Groved.MidX = @s Groved.SafeX
scoreboard players operation @s Groved.MidX += @s Groved.CrossX
scoreboard players operation @s Groved.MidX /= $Constant2 Groved.ConstNum
scoreboard players operation @s Groved.MidY = @s Groved.SafeY
scoreboard players operation @s Groved.MidY += @s Groved.CrossY
scoreboard players operation @s Groved.MidY /= $Constant2 Groved.ConstNum
scoreboard players operation @s Groved.MidZ = @s Groved.SafeZ
scoreboard players operation @s Groved.MidZ += @s Groved.CrossZ
scoreboard players operation @s Groved.MidZ /= $Constant2 Groved.ConstNum

# Check if the middle point is inside the cylinder
scoreboard players operation @s Groved.RadiusSq = @s Groved.MidX
scoreboard players operation @s Groved.RadiusSq *= @s Groved.MidX
scoreboard players operation @s Groved.TempNum = @s Groved.MidZ
scoreboard players operation @s Groved.TempNum *= @s Groved.MidZ
scoreboard players operation @s Groved.RadiusSq += @s Groved.TempNum
scoreboard players set @s Groved.TestRadIn 0
scoreboard players set @s Groved.TestYIn 0
execute if score @s Groved.RadiusSq matches ..25000000 run scoreboard players set @s Groved.TestRadIn 1
execute if score @s Groved.MidY matches 0..5000 run scoreboard players set @s Groved.TestYIn 1
scoreboard players set @s Groved.TestIn 0
execute if score @s Groved.TestRadIn matches 1 if score @s Groved.TestYIn matches 1 run scoreboard players set @s Groved.TestIn 1

# Keep one point on each side of the wall
execute if score @s Groved.TestIn = @s Groved.SafeIn run scoreboard players operation @s Groved.SafeX = @s Groved.MidX
execute if score @s Groved.TestIn = @s Groved.SafeIn run scoreboard players operation @s Groved.SafeY = @s Groved.MidY
execute if score @s Groved.TestIn = @s Groved.SafeIn run scoreboard players operation @s Groved.SafeZ = @s Groved.MidZ
execute unless score @s Groved.TestIn = @s Groved.SafeIn run scoreboard players operation @s Groved.CrossX = @s Groved.MidX
execute unless score @s Groved.TestIn = @s Groved.SafeIn run scoreboard players operation @s Groved.CrossY = @s Groved.MidY
execute unless score @s Groved.TestIn = @s Groved.SafeIn run scoreboard players operation @s Groved.CrossZ = @s Groved.MidZ
scoreboard players remove @s Groved.BisectSt 1

# Bounce after finding the wall
execute if score @s Groved.BisectSt matches 0 run function mrt_supports:groved/sanctuary/ricochet/resolve

# Keep looking for the wall
execute if score @s Groved.BisectSt matches 1.. run function mrt_supports:groved/sanctuary/ricochet/calculations/bisection/step

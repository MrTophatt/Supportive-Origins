# Player Pos is at the feet. Add half of the current pose height before measuring.
execute store result score $CandidateX SW.px run data get entity @s Pos[0] 100
execute store result score $CandidateY SW.py run data get entity @s Pos[1] 100
execute store result score $CandidateZ SW.pz run data get entity @s Pos[2] 100

scoreboard players set $CenterOffset SW.Distance 90
execute if entity @s[nbt={Pose:"CROUCHING"}] run scoreboard players set $CenterOffset SW.Distance 75
execute if entity @s[nbt={Pose:"SWIMMING"}] run scoreboard players set $CenterOffset SW.Distance 30
execute if entity @s[nbt={Pose:"FALL_FLYING"}] run scoreboard players set $CenterOffset SW.Distance 30
execute if entity @s[nbt={Pose:"SPIN_ATTACK"}] run scoreboard players set $CenterOffset SW.Distance 30
execute if entity @s[nbt={Pose:"SLEEPING"}] run scoreboard players set $CenterOffset SW.Distance 10
execute if entity @s[nbt={Pose:"DYING"}] run scoreboard players set $CenterOffset SW.Distance 10
scoreboard players operation $CandidateY SW.py += $CenterOffset SW.Distance

scoreboard players operation $DeltaX SW.dx = $CandidateX SW.px
scoreboard players operation $DeltaX SW.dx -= $RayX SW.ax
scoreboard players operation $DeltaY SW.dy = $CandidateY SW.py
scoreboard players operation $DeltaY SW.dy -= $RayY SW.ay
scoreboard players operation $DeltaZ SW.dz = $CandidateZ SW.pz
scoreboard players operation $DeltaZ SW.dz -= $RayZ SW.az

scoreboard players operation $DeltaX SW.dx *= $DeltaX SW.dx
scoreboard players operation $DeltaY SW.dy *= $DeltaY SW.dy
scoreboard players operation $DeltaZ SW.dz *= $DeltaZ SW.dz

scoreboard players set $Sample SW.Distance 0
scoreboard players operation $Sample SW.Distance += $DeltaX SW.dx
scoreboard players operation $Sample SW.Distance += $DeltaY SW.dy
scoreboard players operation $Sample SW.Distance += $DeltaZ SW.dz

execute if score $Sample SW.Distance matches ..40000 if score $Sample SW.Distance < $Best SW.Distance run scoreboard players operation $BestLink Supports.SW.LinkID = @s Supports.SW.LinkID
execute if score $Sample SW.Distance matches ..40000 if score $Sample SW.Distance < $Best SW.Distance run scoreboard players operation $Best SW.Distance = $Sample SW.Distance

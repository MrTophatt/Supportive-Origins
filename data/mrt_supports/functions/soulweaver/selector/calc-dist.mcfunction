# SCALE = 1000 for milliblock precision
# ---------------------------------
# ---- Store armor stand position (as @s) ----
execute store result score @s ax run data get entity @s Pos[0] 100
execute store result score @s ay run data get entity @s Pos[1] 100
execute store result score @s az run data get entity @s Pos[2] 100

# ---- Store nearest linked player's position (still executing as the armor stand) ----
execute at @a[tag=linked] if score @p soulLinkID = @s soulLinkID store result score @s px run data get entity @p Pos[0] 100
execute at @a[tag=linked] if score @p soulLinkID = @s soulLinkID store result score @s py run data get entity @p Pos[1] 100
execute at @a[tag=linked] if score @p soulLinkID = @s soulLinkID store result score @s pz run data get entity @p Pos[2] 100

# ---------------------------------
# 5. Compute deltas
scoreboard players operation @s dx = @s px
scoreboard players operation @s dx -= @s ax

scoreboard players operation @s dy = @s py
scoreboard players operation @s dy -= @s ay

scoreboard players operation @s dz = @s pz
scoreboard players operation @s dz -= @s az

# ---------------------------------
# 6. Square each component
scoreboard players operation @s dx *= @s dx
scoreboard players operation @s dy *= @s dy
scoreboard players operation @s dz *= @s dz

# ---------------------------------
# 7. Sum into Distance
scoreboard players set @s Distance 0
scoreboard players operation @s Distance += @s dx
scoreboard players operation @s Distance += @s dy
scoreboard players operation @s Distance += @s dz
# The short-lived shooter marker lets the vanilla damage trigger identify an OW! hit.
scoreboard players remove @a[tag=Supports.Groved.OwShooter,scores={Groved.OwTTL=1..}] Groved.OwTTL 1
tag @a[tag=Supports.Groved.OwShooter,scores={Groved.OwTTL=..0}] remove Supports.Groved.OwShooter

# Delay Trickshot by one tick so a player who was also the victim can be excluded.
scoreboard players remove @a[tag=Supports.Groved.Adv.TrickTracking,scores={Groved.TrickTTL=1..}] Groved.TrickTTL 1
execute as @a[tag=Supports.Groved.Adv.TrickPending,tag=!Supports.Groved.Adv.TrickVictim,tag=!Supports.Groved.Adv.Trickshot,scores={Groved.TrickTTL=..0}] run function mrt_supports:groved/advancements/sanctuary/trickshot/award
tag @a[tag=Supports.Groved.Adv.TrickTracking,scores={Groved.TrickTTL=..0}] remove Supports.Groved.Adv.TrickPending
tag @a[tag=Supports.Groved.Adv.TrickTracking,scores={Groved.TrickTTL=..0}] remove Supports.Groved.Adv.TrickVictim
tag @a[tag=Supports.Groved.Adv.TrickTracking,scores={Groved.TrickTTL=..0}] remove Supports.Groved.Adv.TrickTracking

# Keep breeding predicates stable between Sanctuary anchor ticks.
scoreboard players remove @e[tag=Supports.Groved.BreedInside,scores={Groved.BreedTTL=1..}] Groved.BreedTTL 1
tag @e[tag=Supports.Groved.BreedInside,scores={Groved.BreedTTL=..0}] remove Supports.Groved.BreedInside

# Clear persistent trackers when their completed advancement has been revoked.
tag @a[tag=!Supports.Groved.Adv.SafeHaven,advancements={mrt_supports:groved/safe_haven=true}] add Supports.Groved.Adv.SafeHaven
tag @a[tag=!Supports.Groved.Adv.LoveInAir,advancements={mrt_supports:groved/love_is_in_the_air=true}] add Supports.Groved.Adv.LoveInAir
tag @a[tag=!Supports.Groved.Adv.Menagerie,advancements={mrt_supports:groved/a_proper_menagerie=true}] add Supports.Groved.Adv.Menagerie
tag @a[tag=!Supports.Groved.Adv.Trickshot,advancements={mrt_supports:groved/trickshot=true}] add Supports.Groved.Adv.Trickshot
tag @a[tag=!Supports.Groved.Adv.FruitfulHarvest,advancements={mrt_supports:groved/fruitful_harvest=true}] add Supports.Groved.Adv.FruitfulHarvest
execute as @a[tag=Supports.Groved.Adv.SafeHavenTracking,scores={Groved.SafeCount=1..},advancements={mrt_supports:groved/safe_haven={projectile_1=false}}] run function mrt_supports:groved/advancements/revoked/safe-haven
execute as @a[tag=Supports.Groved.Adv.SafeHavenTracking,scores={Groved.SafeCount=2..},advancements={mrt_supports:groved/safe_haven={projectile_2=false}}] run function mrt_supports:groved/advancements/revoked/safe-haven
execute as @a[tag=Supports.Groved.Adv.SafeHavenTracking,scores={Groved.SafeCount=3..},advancements={mrt_supports:groved/safe_haven={projectile_3=false}}] run function mrt_supports:groved/advancements/revoked/safe-haven
execute as @a[tag=Supports.Groved.Adv.SafeHavenTracking,scores={Groved.SafeCount=4..},advancements={mrt_supports:groved/safe_haven={projectile_4=false}}] run function mrt_supports:groved/advancements/revoked/safe-haven
execute as @a[tag=Supports.Groved.Adv.SafeHavenTracking,scores={Groved.SafeCount=5..},advancements={mrt_supports:groved/safe_haven={projectile_5=false}}] run function mrt_supports:groved/advancements/revoked/safe-haven
execute as @a[tag=Supports.Groved.Adv.SafeHavenTracking,tag=!Supports.Groved.SanctuaryDeployed,advancements={mrt_supports:groved/safe_haven=false}] run function mrt_supports:groved/advancements/sanctuary/safe-haven/reset
execute as @a[tag=Supports.Groved.Adv.LoveInAirTracking,scores={Groved.BreedNum=1..},advancements={mrt_supports:groved/love_is_in_the_air={breeding_1=false}}] run function mrt_supports:groved/advancements/revoked/love-is-in-the-air
execute as @a[tag=Supports.Groved.Adv.LoveInAirTracking,scores={Groved.BreedNum=2..},advancements={mrt_supports:groved/love_is_in_the_air={breeding_2=false}}] run function mrt_supports:groved/advancements/revoked/love-is-in-the-air
execute as @a[tag=Supports.Groved.Adv.LoveInAirTracking,scores={Groved.BreedNum=3..},advancements={mrt_supports:groved/love_is_in_the_air={breeding_3=false}}] run function mrt_supports:groved/advancements/revoked/love-is-in-the-air
execute as @a[tag=Supports.Groved.Adv.LoveInAirTracking,scores={Groved.BreedNum=4..},advancements={mrt_supports:groved/love_is_in_the_air={breeding_4=false}}] run function mrt_supports:groved/advancements/revoked/love-is-in-the-air
execute as @a[tag=Supports.Groved.Adv.LoveInAirTracking,scores={Groved.BreedNum=5..},advancements={mrt_supports:groved/love_is_in_the_air={breeding_5=false}}] run function mrt_supports:groved/advancements/revoked/love-is-in-the-air
execute as @a[tag=Supports.Groved.Adv.LoveInAirTracking,scores={Groved.BreedNum=6..},advancements={mrt_supports:groved/love_is_in_the_air={breeding_6=false}}] run function mrt_supports:groved/advancements/revoked/love-is-in-the-air
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=1..},advancements={mrt_supports:groved/fruitful_harvest={crop_1=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=2..},advancements={mrt_supports:groved/fruitful_harvest={crop_2=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=3..},advancements={mrt_supports:groved/fruitful_harvest={crop_3=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=4..},advancements={mrt_supports:groved/fruitful_harvest={crop_4=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=5..},advancements={mrt_supports:groved/fruitful_harvest={crop_5=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=6..},advancements={mrt_supports:groved/fruitful_harvest={crop_6=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=7..},advancements={mrt_supports:groved/fruitful_harvest={crop_7=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=8..},advancements={mrt_supports:groved/fruitful_harvest={crop_8=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=9..},advancements={mrt_supports:groved/fruitful_harvest={crop_9=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.FruitfulTracking,scores={Groved.CropCount=10..},advancements={mrt_supports:groved/fruitful_harvest={crop_10=false}}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest
execute as @a[tag=Supports.Groved.Adv.SafeHaven,advancements={mrt_supports:groved/safe_haven=false}] run function mrt_supports:groved/advancements/revoked/safe-haven
execute as @a[tag=Supports.Groved.Adv.LoveInAir,advancements={mrt_supports:groved/love_is_in_the_air=false}] run function mrt_supports:groved/advancements/revoked/love-is-in-the-air
execute as @a[tag=Supports.Groved.Adv.Menagerie,advancements={mrt_supports:groved/a_proper_menagerie=false}] run function mrt_supports:groved/advancements/revoked/menagerie
execute as @a[tag=Supports.Groved.Adv.Trickshot,advancements={mrt_supports:groved/trickshot=false}] run function mrt_supports:groved/advancements/revoked/trickshot
execute as @a[tag=Supports.Groved.Adv.FruitfulHarvest,advancements={mrt_supports:groved/fruitful_harvest=false}] run function mrt_supports:groved/advancements/revoked/fruitful-harvest

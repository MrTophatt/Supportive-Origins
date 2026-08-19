# This runs after every linked soul records its current dimension and before teleportation.
execute if score #Overworld SW.AdvRealm matches 1 if score #Nether SW.AdvRealm matches 1 if score #End SW.AdvRealm matches 1 run advancement grant @s only mrt_supports:soulweaver/across_all_realms complete

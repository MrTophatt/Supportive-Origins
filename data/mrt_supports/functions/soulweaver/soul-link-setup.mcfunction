scoreboard objectives add soulLink dummy
scoreboard objectives add soulLinkID dummy
scoreboard objectives add health dummy

execute unless score global soulLink matches 1.. run scoreboard players set global soulLink 0

scoreboard objectives add Numbers dummy
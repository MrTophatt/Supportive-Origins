scale set pehkui:width 0.75
scale persist set pehkui:width true
scale set pehkui:height 0.75
scale persist set pehkui:height true

particle minecraft:electric_spark ~ ~0.68 ~ 0.26 0.36 0.24 0.020 4 force @a[distance=..20]
particle minecraft:scrape ~ ~0.68 ~ 0.24 0.34 0.22 0.012 3 force @a[distance=..20]
playsound minecraft:block.piston.contract player @a ~ ~ ~ 0.42 1.28
playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.25 1.55

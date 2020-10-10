
execute if entity @s[scores={deathCount=1..}] run scoreboard players set @s deathScreen 0
execute if score ~Mode Settings matches 1 if score ~dragonPhase var matches 6 run scoreboard players set @s deathScreen 0
execute if score ~TimerInTicks var matches 20.. if score ~dragonHealth var matches ..0 unless score @s deathScreen matches 0.. run scoreboard players set @s[scores={scene=2}] deathScreen 0
execute if entity @s[scores={deathScreen=0..}] run scoreboard players add @s deathScreen 1

execute if entity @s[scores={deathScreen=1..}] run kill @e[type=ender_dragon]
execute if score ~dragonPhase var matches 9 run kill @e[type=ender_dragon]

effect give @s[scores={deathScreen=1..19}] minecraft:resistance 1 100 true
gamemode adventure @s[scores={deathScreen=1..19},gamemode=survival]

kill @s[scores={deathScreen=19}]

execute if entity @s[scores={deathScreen=1}] run scoreboard players set ~loadStructures var 0
execute if entity @s[scores={deathScreen=20..}] run function main:end_practice/loadmap

execute unless entity @s[scores={scene=2}] run scoreboard players reset @s deathScreen
execute if entity @s[scores={deathScreen=20..}] run scoreboard players reset @s deathScreen

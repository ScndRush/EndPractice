
#Timer
execute unless score ~loadStructures var matches 0.. run scoreboard players add ~TimerInTicks var 1
scoreboard players operation ~TimerInMinutes var = ~TimerInTicks var
scoreboard players operation ~TimerInMinutes var /= ~1200 var
scoreboard players operation ~TimerInMinutes var *= ~60 var
scoreboard players operation ~TimerInSeconds var = ~TimerInTicks var
scoreboard players operation ~TimerInSeconds var /= ~20 var
scoreboard players operation ~TimerInSeconds var -= ~TimerInMinutes var
scoreboard players operation ~TimerInMinutes var /= ~60 var

#Count Tries
execute if score ~TimerInTicks var matches 30 run scoreboard players add ~Tries var 1

#Init
execute if score ~TimerInTicks var matches 10 run clear @s barrier{clear:1}

#Fix Teleport
execute if score ~Mode Settings matches 1 if score ~TimerInTicks var matches 1..6 at @e[tag=playerArmorStand] run tp @s ~-953 ~-40 ~-1000 ~ ~

#Reload
execute if score ~initMap var matches 0 if score ~loadStructures var matches 0.. run scoreboard players set @s scene 1



execute if score ~autoRestart Settings matches 0 if score ~dragonPhase var matches 9 run kill @e[type=ender_dragon]
execute if score ~autoRestart Settings matches 0 if score ~Mode Settings matches 1 if score ~dragonPhase var matches 6 run scoreboard players set @s scene 1
execute if score ~autoRestart Settings matches 0 if score ~Mode Settings matches 1 if score ~TimerInTicks var matches 20.. if score ~dragonHealth var matches ..0 run scoreboard players set @s scene 1

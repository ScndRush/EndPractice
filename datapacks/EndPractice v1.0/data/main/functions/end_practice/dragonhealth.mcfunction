
#Damage Dealt
scoreboard players operation ~dragonDamageDealt var = ~dragonHealth var
execute if entity @e[type=ender_dragon] unless score ~loadStructures var matches 1.. store result score ~dragonHealth var run data get entity @e[type=minecraft:ender_dragon,limit=1] Health
execute if score ~dragonPhase var matches 9 run scoreboard players set ~dragonHealth var 0
execute if score ~dragonDamageDealt var > ~dragonHealth var run tag @e[type=ender_dragon] add hit
execute if entity @e[type=ender_dragon,tag=hit] run scoreboard players operation ~dragonDamageDealt var -= ~dragonHealth var

execute as @s[scores={scene=2}] store result score @s hurtTime run data get entity @s HurtTime

execute if entity @e[type=ender_dragon,tag=hit] as @s[scores={scene=2,hurtTime=10}] run tag @s add bedHit
execute if entity @e[type=ender_dragon,tag=hit] as @s[scores={scene=2,deathCount=1}] run tag @s add bedHit

execute as @s[tag=bedHit] if score ~bedsPlaced var matches 0 run scoreboard players operation ~bedDamage1 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 1 run scoreboard players operation ~bedDamage2 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 2 run scoreboard players operation ~bedDamage3 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 3 run scoreboard players operation ~bedDamage4 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 4 run scoreboard players operation ~bedDamage5 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 5 run scoreboard players operation ~bedDamage6 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 6 run scoreboard players operation ~bedDamage7 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 7 run scoreboard players operation ~bedDamage8 var = ~dragonDamageDealt var
execute as @s[tag=bedHit] if score ~bedsPlaced var matches 8 run scoreboard players operation ~bedDamage9 var = ~dragonDamageDealt var

execute as @s[tag=bedHit] run scoreboard players add ~bedsPlaced var 1


tag @s[tag=bedHit] remove bedHit
tag @e[type=ender_dragon,tag=hit] remove hit


#Update Bossbar
execute if entity @e[type=ender_dragon] store result bossbar minecraft:dragonhealth value run scoreboard players get ~dragonHealth var
bossbar set minecraft:dragonhealth players @s
bossbar set minecraft:dragonhealth visible false
execute as @s[scores={scene=2}] run bossbar set minecraft:dragonhealth visible true

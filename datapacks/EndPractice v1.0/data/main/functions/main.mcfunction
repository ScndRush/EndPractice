#Scenes
#-1 Operating Mode
#0 Main - Menu
#1 End - Menu
#2 End - DragonFight
#3 End - BlockSetupEditor
#4 End - InventoryEditor

####################################################################################################################################################################################################################################################################
##Player

#Store Player Data
execute as @a store result score @s Fire run data get entity @s Fire

execute as @a store result score @s PosX run data get entity @s Pos[0] 10
execute as @a store result score @s PosY run data get entity @s Pos[1] 10
execute as @a store result score @s PosZ run data get entity @s Pos[2] 10

#Init Player
execute as @a[tag=!init] run scoreboard players set @s scene 1
execute as @a[scores={leaveGame=1..}] run scoreboard players set @s scene 1

execute in the_end run spawnpoint @a[tag=!init] 0 10000 0

####################################################################################################################################################################################################################################################################
##Functions

execute as @a at @s in the_end run function main:end_practice/main

####################################################################################################################################################################################################################################################################


tag @a[tag=!init] add init
scoreboard players reset @a[scores={leaveGame=1..}] leaveGame
scoreboard players reset @a[scores={deathCount=1..}] deathCount

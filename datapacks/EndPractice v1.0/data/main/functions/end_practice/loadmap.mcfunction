
#Reset Entities
kill @e[type=!player,tag=!playerArmorStand,tag=!endMenuMain,tag=!blockSetupEditorMain,tag=!invEditorMain,type=!minecraft:end_crystal]
execute if score ~endCrystals Settings matches 1 at @e[type=minecraft:end_crystal] run summon minecraft:arrow ~0.1 ~2.5 ~0.1
kill @e[type=item]

#Reset Variables
scoreboard players set ~bedsPlaced var 0
scoreboard players reset ~bedDamage1 var
scoreboard players reset ~bedDamage2 var
scoreboard players reset ~bedDamage3 var
scoreboard players reset ~bedDamage4 var
scoreboard players reset ~bedDamage5 var
scoreboard players reset ~bedDamage6 var
scoreboard players reset ~bedDamage7 var
scoreboard players reset ~bedDamage8 var
scoreboard players reset ~bedDamage9 var

scoreboard players set ~TimerInTicks var 0

#Gamerules
gamerule doMobSpawning true
gamerule doTileDrops true
gamerule fallDamage true
gamerule doMobLoot true

#Player
gamemode survival @s
effect give @s minecraft:instant_health 1 100 true
clear @s

#BlockSetup + Teleport
execute if score ~Mode Settings matches 0 run setblock -3 62 0 structure_block[mode=load]{name:"structures:endportal_none",posX:0,posY:-1,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
execute if score ~Mode Settings matches 0 run setblock -3 63 0 redstone_block
execute if score ~Mode Settings matches 0 run tp @s 91 59 0 90 0

execute if score ~Mode Settings matches 1 at @e[tag=blockSetupEditorMain,limit=1] run clone ~-2 ~1 ~-5 ~8 ~7 ~5 -5 61 -5
execute if score ~Mode Settings matches 1 at @e[tag=blockSetupEditorMain,limit=1] if score ~Mode Settings matches 1 unless entity @e[tag=playerArmorStand] run tp @s 5 62 0 90 0
execute if score ~Mode Settings matches 1 at @e[tag=blockSetupEditorMain,limit=1] if score ~Mode Settings matches 1 at @e[tag=playerArmorStand] run tp @s ~-953 ~-40 ~-1000 ~ ~



#Scene
scoreboard players set @s scene 2

#Back to Lobby Message
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Back to Lobby","color":"#FFFFFF","clickEvent":{"action":"run_command","value":"/scoreboard players set @s scene 1"}},{"text":"]","color":"dark_gray"}]

#Load Inventory
execute at @s run function main:end_practice/menu/inventory_editor/load_inventory

#Summon Dragon
execute if score ~Mode Settings matches 0 run summon minecraft:ender_dragon 0 100 0 {DragonPhase:0,Rotation:[-90F,0F]}

execute if score ~Mode Settings matches 1 run summon minecraft:ender_dragon 0 90 0 {DragonPhase:3,Rotation:[0F,0F]}
execute if score ~Mode Settings matches 1 store result entity @e[type=minecraft:ender_dragon,limit=1] Rotation[0] float 1 run scoreboard players get ~dragonPerch360 var
execute if score ~Mode Settings matches 1 as @e[type=minecraft:ender_dragon,limit=1] at @s run tp @s ^ ^ ^-15

#Scenes
#-1 Operating Mode
#0 Main - Menu
#1 End - Menu
#2 End - DragonFight
#3 End - BlockSetupEditor
#4 End - InventoryEditor



#Dragon Health
function main:end_practice/dragonhealth

#Actionbar
function main:end_practice/actionbar

#Get DragonPhase
execute store result score ~dragonPhase var run data get entity @e[type=minecraft:ender_dragon,limit=1] DragonPhase

#Random Perch Rotation
scoreboard players add ~dragonPerch360 var 7
execute if score ~dragonPerch360 var matches 361.. run scoreboard players operation ~dragonPerch360 var -= ~360 var

####################################################################################################################################################################################################################################################################
#Scene 1: End-Practice Menu
execute in the_end unless entity @e[tag=endMenuMain] run summon area_effect_cloud 1000.0 100 1000.0 {Duration:10000000,Tags:["endMenu","endMenuMain"]}
execute as @s[scores={scene=1}] at @s in the_end if score ~initMap var matches 1 run function main:end_practice/menu/main
execute if score ~initMenu var matches 1 unless entity @s[scores={scene=1}] run scoreboard players set ~initMenu var 0
execute if score ~autoRestart Settings matches 0 as @s[scores={deathCount=1..,scene=2}] run scoreboard players set @s scene 1
execute unless entity @s[scores={scene=1}] run kill @e[tag=endMenu,tag=!endMenuMain]

####################################################################################################################################################################################################################################################################
#Scene 2: End-Practice End Fight
execute as @s[scores={scene=2}] at @s in the_end run function main:end_practice/endfight

####################################################################################################################################################################################################################################################################
#Scene 3: End-Practice Edit Block Setup
execute in the_end unless entity @e[tag=blockSetupEditorMain] run summon area_effect_cloud 950.0 100 1000.0 {Duration:10000000,Tags:["blockSetupEditorMain","blockSetupEditor"]}
execute as @s[scores={scene=3}] at @s in the_end run function main:end_practice/menu/blocksetup_editor
execute if score ~initBlockSetupEditor var matches 1 unless entity @s[scores={scene=3}] run scoreboard players set ~initBlockSetupEditor var 0
execute unless entity @s[scores={scene=3}] run kill @e[tag=blockSetupEditor,tag=!playerArmorStand,tag=!blockSetupEditorMain]
execute as @s[tag=!init] at @e[tag=blockSetupEditorMain,limit=1] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"structures:init_blocksetupeditor",posX:-3,posY:0,posZ:-6,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b}
execute as @s[tag=!init] at @e[tag=blockSetupEditorMain,limit=1] run setblock ~ ~1 ~ redstone_block

####################################################################################################################################################################################################################################################################
#Scene 4: End-Practice Edit Inventory
execute in the_end unless entity @e[tag=invEditorMain] run summon area_effect_cloud 1050.0 100 1000.0 {Duration:10000000,Tags:["invEditorMain","invEditor"]}
execute as @s[scores={scene=4}] at @s in the_end run function main:end_practice/menu/inventory_editor/main
execute if score ~initInventoryEditor var matches 1 unless entity @s[scores={scene=4}] run scoreboard players set ~initInventoryEditor var 0
execute unless entity @s[scores={scene=4}] run kill @e[tag=invEditor,tag=!invEditorMain]
execute as @s[tag=!init] at @e[tag=invEditorMain,limit=1] run setblock ~5 ~2 ~0 chest[facing=west]{Items:[{Slot:0b,id:"minecraft:red_bed",Count:1b},{Slot:1b,id:"minecraft:red_bed",Count:1b},{Slot:2b,id:"minecraft:red_bed",Count:1b},{Slot:3b,id:"minecraft:red_bed",Count:1b},{Slot:4b,id:"minecraft:red_bed",Count:1b},{Slot:5b,id:"minecraft:red_bed",Count:1b},{Slot:6b,id:"minecraft:red_bed",Count:1b},{Slot:7b,id:"minecraft:red_bed",Count:1b},{Slot:8b,id:"minecraft:red_bed",Count:1b}]}

####################################################################################################################################################################################################################################################################
#AutoRestart
execute as @s[scores={scene=1..2}] at @s in the_end if score ~autoRestart Settings matches 1 run function main:end_practice/autorestart

####################################################################################################################################################################################################################################################################
#LoadStructures
execute if score ~loadStructures var matches 0..18 run function main:end_practice/loadstructures
execute if score ~loadStructures var matches 0.. run scoreboard players add ~loadStructures var 1

execute if score ~loadStructures var matches 0.. run function main:end_practice/loadingbar

execute if score ~initMap var matches 0 if score ~loadStructures var matches 1 run tag @s add cancelLoadStructures
execute if score ~initMap var matches 0 if score ~loadStructures var matches 0..18 run gamemode spectator @s
execute if score ~initMap var matches 0 if score ~loadStructures var matches 0..18 run tp @s 0 300 0 0 -90
execute if score ~initMap var matches 0 if score ~loadStructures var matches 1 run summon ender_dragon 0 100 0
execute if score ~initMap var matches 0 if score ~loadStructures var matches 19 run kill @e[type=ender_dragon]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 18 run scoreboard players set @s scene 1
execute if score ~initMap var matches 0 if score ~loadStructures var matches 18 run scoreboard players set ~initMap var 1


execute if score ~loadStructures var matches 30.. run scoreboard players set ~loadStructures var -1

####################################################################################################################################################################################################################################################################
#Player
execute unless entity @s[scores={scene=2}] run effect clear @s
execute unless entity @s[scores={scene=2}] run effect give @s saturation 2 0 true
execute unless entity @s[scores={scene=2}] run effect give @s resistance 1 10 true
execute unless entity @s[scores={scene=2}] run effect give @s instant_health 1 10 true

####################################################################################################################################################################################################################################################################

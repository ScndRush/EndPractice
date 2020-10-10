
#Get Relative Player Pos
scoreboard players operation @s PosDifferenceX = @s PosX
scoreboard players operation @s PosDifferenceX -= ~blockSetupEditorPosX10 var
scoreboard players operation @s PosDifferenceY = @s PosY
scoreboard players operation @s PosDifferenceY -= ~blockSetupEditorPosY10 var
scoreboard players operation @s PosDifferenceZ = @s PosZ
scoreboard players operation @s PosDifferenceZ -= ~blockSetupEditorPosZ10 var

#Player
execute if score ~initBlockSetupEditor var matches 1 unless entity @s[scores={PosDifferenceX=-17..116,PosDifferenceY=10..62,PosDifferenceZ=-47..56}] at @e[tag=blockSetupEditorMain,limit=1] run tp @s ~8.5 ~2 ~0.5 90 0
gamemode survival @s
kill @e[type=item]

#Blocks
execute at @e[tag=blockSetupEditorMain,limit=1] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"structures:blocksetupeditor2",posX:-3,posY:0,posZ:-6,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
execute at @e[tag=blockSetupEditorMain,limit=1] run setblock ~ ~1 ~ redstone_block

#Reset
execute if score ~resetBlockSetupEditor var matches 1 run kill @e[tag=playerArmorStand]
execute if score ~resetBlockSetupEditor var matches 1 at @e[tag=blockSetupEditorMain,limit=1] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"structures:blocksetupeditor",posX:-3,posY:0,posZ:-6,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
execute if score ~resetBlockSetupEditor var matches 1 at @e[tag=blockSetupEditorMain,limit=1] run setblock ~ ~1 ~ redstone_block
execute if score ~resetBlockSetupEditor var matches 1 run scoreboard players reset ~resetBlockSetupEditor var

#Portal
execute at @e[tag=blockSetupEditorMain,limit=1] run particle minecraft:portal ~11.5 ~3.5 ~0.5 0 1.5 0.75 0.1 6 force
execute as @s[scores={PosDifferenceX=115..116,PosDifferenceY=20..42,PosDifferenceZ=-7..16}] run scoreboard players set @s scene 1
execute as @s[scores={PosDifferenceX=115..116,PosDifferenceY=20..42,PosDifferenceZ=-7..16}] run tag @s add cancelLoadStructures
execute as @s[scores={PosDifferenceX=115..116,PosDifferenceY=20..42,PosDifferenceZ=-7..16}] at @e[tag=endMenuMain] rotated as @s run tp @s ~6.5 ~-10 ~11.5 ~-90 ~

#Inventory
replaceitem entity @s container.0 minecraft:netherrack
replaceitem entity @s container.1 minecraft:nether_brick_slab
replaceitem entity @s container.2 minecraft:obsidian
replaceitem entity @s container.3 minecraft:armor_stand{display:{Name:'{"text":"Player","color":"aqua"}'},EntityTag:{Tags:["playerArmorStand","blockSetupEditor"],CustomNameVisible:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6708334}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2502143}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6094842}}},{id:"minecraft:player_head",Count:1b}],CustomName:'{"text":"Player","color":"aqua"}'}}
replaceitem entity @s container.4 minecraft:air
replaceitem entity @s container.5 minecraft:air
replaceitem entity @s container.6 minecraft:air
replaceitem entity @s container.7 minecraft:air
replaceitem entity @s container.8 minecraft:air

#PlayerArmorStand
execute store result score ~playerArmorStandsCount var run execute if entity @e[tag=playerArmorStand]
execute if score ~playerArmorStandsCount var matches 2.. run kill @e[tag=playerArmorStand,tag=init]
execute as @e[tag=playerArmorStand,tag=!init] at @s rotated as @a[limit=1,sort=nearest,scores={scene=3}] run tp @s ~ ~ ~ ~ 0
tag @e[tag=playerArmorStand,tag=!init] add init

###################################################################################################################################################################################################################################################################
#Init
execute if score ~initBlockSetupEditor var matches 0 unless entity @e[tag=display_Lobby,tag=blockSetupEditor] at @e[tag=blockSetupEditorMain,limit=1] run summon minecraft:armor_stand ~11.5 ~5 ~0.5 {Tags:["display_Lobby","blockSetupEditor"],CustomName:'[{"text":"Lobby","color":"green"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b}


execute if score ~initBlockSetupEditor var matches 0 run scoreboard players set ~initBlockSetupEditor var 1

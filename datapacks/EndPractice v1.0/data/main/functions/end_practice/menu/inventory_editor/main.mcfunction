#Get Relative Player Pos
scoreboard players operation @s PosDifferenceX = @s PosX
scoreboard players operation @s PosDifferenceX -= ~invEditorPosX10 var
scoreboard players operation @s PosDifferenceY = @s PosY
scoreboard players operation @s PosDifferenceY -= ~invEditorPosY10 var
scoreboard players operation @s PosDifferenceZ = @s PosZ
scoreboard players operation @s PosDifferenceZ -= ~invEditorPosZ10 var

#Player
execute if score ~initInventoryEditor var matches 1 unless entity @s[scores={PosDifferenceX=-17..36,PosDifferenceY=5..42,PosDifferenceZ=-20..29}] run tp @s 1050 101 1000 -90 0
gamemode creative @s
kill @e[type=item,nbt={Age:10s}]

#Blocks
execute at @e[tag=invEditorMain,limit=1] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"structures:inveditor",posX:-4,posY:0,posZ:-4,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
execute at @e[tag=invEditorMain,limit=1] run setblock ~ ~1 ~ redstone_block

#Portal
execute at @e[tag=invEditorMain,limit=1] run particle minecraft:portal ~-1.5 ~2.5 ~0.5 0 1.5 0.75 0.1 6 force
execute as @s[scores={PosDifferenceX=-17..-16,PosDifferenceY=10..37,PosDifferenceZ=-10..19}] run scoreboard players set @s scene 1
execute as @s[scores={PosDifferenceX=-17..-16,PosDifferenceY=10..37,PosDifferenceZ=-10..19}] run tag @s add cancelLoadStructures
execute as @s[scores={PosDifferenceX=-17..-16,PosDifferenceY=10..37,PosDifferenceZ=-10..19}] at @e[tag=endMenuMain] rotated as @s run tp @s ~6.5 ~-10 ~-8.5 ~-90 ~

####################################################################################################################################################################################################################################################################
#Init
execute if score ~initInventoryEditor var matches 0 at @e[tag=invEditorMain,limit=1] unless block ~5 ~2 ~0 chest[facing=west] run setblock ~5 ~2 ~0 chest[facing=west]
execute if score ~initInventoryEditor var matches 0 at @e[tag=invEditorMain,limit=1] unless block ~5 ~2 ~1 chest[facing=west,type=left] run setblock ~5 ~2 ~1 chest[facing=west,type=left]

execute if score ~initInventoryEditor var matches 0 at @s run function main:end_practice/menu/inventory_editor/load_inventory
execute at @s unless entity @e[type=item,distance=0..2] run clear @s barrier{clear:1}

execute if score ~initInventoryEditor var matches 0 unless entity @e[tag=display_Lobby,tag=invEditor] at @e[tag=invEditorMain,limit=1] run summon minecraft:armor_stand ~-1.5 ~4 ~0.5 {Tags:["display_Lobby","invEditor"],CustomName:'[{"text":"Lobby","color":"green"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b}

####################################################################################################################################################################################################################################################################

#Store Inventory
execute at @e[tag=invEditorMain,limit=1] run function main:end_practice/menu/inventory_editor/store_inventory





execute if score ~initInventoryEditor var matches 0 run scoreboard players set ~initInventoryEditor var 1

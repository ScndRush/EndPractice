
#Get Relative Player Pos
scoreboard players operation @s PosDifferenceX = @s PosX
scoreboard players operation @s PosDifferenceX -= ~endMenuPosX10 var
scoreboard players operation @s PosDifferenceY = @s PosY
scoreboard players operation @s PosDifferenceY -= ~endMenuPosY10 var
scoreboard players operation @s PosDifferenceZ = @s PosZ
scoreboard players operation @s PosDifferenceZ -= ~endMenuPosZ10 var

#Block Portal
execute if score ~loadStructures var matches 1.. at @e[tag=endMenuMain] run fill ~-5 ~-7 ~2 ~-7 ~-2 ~ barrier replace air
execute if score ~loadStructures var matches ..-1 at @e[tag=endMenuMain] run fill ~-5 ~-7 ~2 ~-7 ~-2 ~ air replace barrier

#Player
gamemode adventure @s
execute if score ~initMenu var matches 1 unless entity @s[scores={PosDifferenceX=-92..129,PosDifferenceY=-105..-23,PosDifferenceZ=-102..131}] if score ~initMap var matches 1 at @e[tag=endMenuMain,limit=1] run tp @s ~8 ~-10 ~1.5 90 0
execute if score ~initMenu var matches 0 run kill @s[scores={Fire=1..}]
execute if score ~initMenu var matches 0 run stopsound @s * minecraft:entity.ender_dragon.death
execute if score ~initMenu var matches 0 run xp set @s 0 levels
execute if score ~initMenu var matches 0 run xp set @s 0 points

#Portals
execute at @e[tag=endMenuMain,limit=1] run particle minecraft:portal ~6.5 ~-8.5 ~12.5 0.75 1.5 0 0.1 6 force
scoreboard players set @s[scores={PosDifferenceX=53..76,PosDifferenceY=-100..-73,PosDifferenceZ=125..126}] scene 3
execute as @s[scores={PosDifferenceX=53..76,PosDifferenceY=-100..-73,PosDifferenceZ=125..126}] at @e[tag=blockSetupEditorMain] rotated as @s run tp @s ~10.5 ~2 ~0.5 ~90 ~

execute at @e[tag=endMenuMain,limit=1] run particle minecraft:portal ~6.5 ~-8.5 ~-9.5 0.75 1.5 0 0.1 6 force
scoreboard players set @s[scores={PosDifferenceX=53..76,PosDifferenceY=-100..-73,PosDifferenceZ=-97..-96}] scene 4
execute as @s[scores={PosDifferenceX=53..76,PosDifferenceY=-100..-73,PosDifferenceZ=-97..-96}] at @e[tag=invEditorMain] rotated as @s run tp @s ~-0.5 ~1 ~0.5 ~90 ~

#Settings
function main:end_practice/menu/settings

#Start
execute as @s[scores={PosDifferenceX=-70..-40,PosDifferenceY=-80..-60,PosDifferenceZ=0..30}] run function main:end_practice/loadmap

####################################################################################################################################################################################################################################################################
##Init
execute if score ~initMenu var matches 0 run kill @e[type=!player,tag=!playerArmorStand,tag=!endMenuMain,tag=!blockSetupEditorMain,tag=!invEditorMain,type=!end_crystal]

#loadStructures
execute if score ~initMenu var matches 0 run scoreboard players set ~loadStructures var 0
execute if entity @s[tag=cancelLoadStructures] run scoreboard players set ~loadStructures var 100
tag @s[tag=cancelLoadStructures] remove cancelLoadStructures

#Gamerules
execute if score ~initMenu var matches 0 run gamerule doMobSpawning false
execute if score ~initMenu var matches 0 run gamerule fallDamage false
execute if score ~initMenu var matches 0 run gamerule doTileDrops false
execute if score ~initMenu var matches 0 run gamerule doMobLoot false

#Load Menu Structure
execute if score ~initMenu var matches 0 at @e[tag=endMenuMain,limit=1] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"structures:endfight_menu",posX:-11,posY:-12,posZ:-12,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
execute if score ~initMenu var matches 0 at @e[tag=endMenuMain,limit=1] run setblock ~ ~1 ~ redstone_block
execute if score ~initMenu var matches 0 at @e[tag=endMenuMain,limit=1] run fill ~ ~ ~ ~ ~1 ~ air

#Holograms
execute if score ~initMenu var matches 0 unless entity @e[tag=display_endInventoryEditor] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~6.5 ~-7 ~-9.5 {Tags:["endMenu","display_endInventoryEditor"],CustomName:'{"text":"Edit Inventory","color":"yellow"}',CustomNameVisible:1b,Marker:1b,Invisible:1b}
execute if score ~initMenu var matches 0 unless entity @e[tag=display_endBlockSetupEditor] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~6.5 ~-7 ~12.5 {Tags:["endMenu","display_endBlockSetupEditor"],CustomName:'{"text":"Edit Block-Setup","color":"yellow"}',CustomNameVisible:1b,Marker:1b,Invisible:1b}
execute if score ~initMenu var matches 0 unless entity @e[tag=display_endSettings1] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~-3.5 ~-6.2 ~-6.5 {Tags:["endMenu","display_endSettings1"],CustomName:'{"text":"Settings","color":"yellow"}',CustomNameVisible:1b,Marker:1b,Invisible:1b}
execute if score ~initMenu var matches 0 unless entity @e[tag=display_endSettings2] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~-3.5 ~-6.2 ~9.5 {Tags:["endMenu","display_endSettings2"],CustomName:'{"text":"Settings","color":"yellow"}',CustomNameVisible:1b,Marker:1b,Invisible:1b}

#Stats
execute if score ~initMenu var matches 0 run function main:end_practice/menu/stats



execute if score ~initMenu var matches 0 run scoreboard players set ~initMenu var 1

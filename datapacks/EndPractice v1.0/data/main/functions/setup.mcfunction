kill @e[type=!player,tag=!playerArmorStand]

gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule showDeathMessages false
gamerule announceAdvancements false

scoreboard objectives add deathCount deathCount
scoreboard objectives add playerHealth health
scoreboard objectives add deathScreen dummy
scoreboard objectives add leaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add hurtTime dummy
scoreboard objectives add Fire dummy



#Settings
scoreboard objectives add Settings dummy {"text":"Settings","color":"aqua"}

execute unless score ~autoRestart Settings matches 0.. run scoreboard players set ~autoRestart Settings 0
execute unless score ~Mode Settings matches 0.. run scoreboard players set ~Mode Settings 0
execute unless score ~endCrystals Settings matches 0.. run scoreboard players set ~endCrystals Settings 0
execute unless score ~Actionbar Settings matches 0.. run scoreboard players set ~Actionbar Settings 0

#Variables
scoreboard objectives add var dummy {"text":"Variables","color":"aqua"}

scoreboard players set ~loadStructures var 0
scoreboard players set ~initMenu var 0
scoreboard players set ~initMap var 0
scoreboard players set ~initInventoryEditor var 0
scoreboard players set ~initBlockSetupEditor var 0
execute unless score ~bedsPlaced var matches 0.. run scoreboard players set ~bedsPlaced var 0
execute unless score ~TimerInTicks var matches -1.. run scoreboard players set ~TimerInTicks var -1
execute unless score ~TimerInSeconds var matches 0.. run scoreboard players set ~TimerInSeconds var 0
execute unless score ~TimerInMinutes var matches 0.. run scoreboard players set ~TimerInMinutes var 0
scoreboard players set ~20 var 20
scoreboard players set ~60 var 60
scoreboard players set ~1200 var 1200
scoreboard players set ~10 var 10
scoreboard players set ~360 var 360
execute unless score ~Tries var matches 0.. run scoreboard players set ~Tries var 0
execute unless score ~loadStructures var matches -1.. run scoreboard players set ~loadStructures var -1
scoreboard players set ~dragonPerch360 var 0

scoreboard players set ~endMenuPosX var 1000
scoreboard players set ~endMenuPosY var 100
scoreboard players set ~endMenuPosZ var 1000
scoreboard players set ~invEditorPosX var 1050
scoreboard players set ~invEditorPosY var 100
scoreboard players set ~invEditorPosZ var 1000
scoreboard players set ~blockSetupEditorPosX var 950
scoreboard players set ~blockSetupEditorPosY var 100
scoreboard players set ~blockSetupEditorPosZ var 1000

scoreboard players operation ~endMenuPosX10 var = ~endMenuPosX var
scoreboard players operation ~endMenuPosX10 var *= ~10 var
scoreboard players operation ~endMenuPosY10 var = ~endMenuPosY var
scoreboard players operation ~endMenuPosY10 var *= ~10 var
scoreboard players operation ~endMenuPosZ10 var = ~endMenuPosZ var
scoreboard players operation ~endMenuPosZ10 var *= ~10 var

scoreboard players operation ~invEditorPosX10 var = ~invEditorPosX var
scoreboard players operation ~invEditorPosX10 var *= ~10 var
scoreboard players operation ~invEditorPosY10 var = ~invEditorPosY var
scoreboard players operation ~invEditorPosY10 var *= ~10 var
scoreboard players operation ~invEditorPosZ10 var = ~invEditorPosZ var
scoreboard players operation ~invEditorPosZ10 var *= ~10 var

scoreboard players operation ~blockSetupEditorPosX10 var = ~blockSetupEditorPosX var
scoreboard players operation ~blockSetupEditorPosX10 var *= ~10 var
scoreboard players operation ~blockSetupEditorPosY10 var = ~blockSetupEditorPosY var
scoreboard players operation ~blockSetupEditorPosY10 var *= ~10 var
scoreboard players operation ~blockSetupEditorPosZ10 var = ~blockSetupEditorPosZ var
scoreboard players operation ~blockSetupEditorPosZ10 var *= ~10 var

#Player Position
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add PosDifferenceX dummy
scoreboard objectives add PosDifferenceY dummy
scoreboard objectives add PosDifferenceZ dummy


#Bossbar
bossbar add dragonhealth {"text":"Ender Dragon"}
bossbar set minecraft:dragonhealth max 200
bossbar set minecraft:dragonhealth players @a
bossbar set minecraft:dragonhealth color yellow
bossbar set minecraft:dragonhealth style notched_10


bossbar add loadstructures {"text":"Preparing Map...","color":"yellow","italic":"true"}
bossbar set minecraft:loadstructures max 18
bossbar set minecraft:loadstructures value 0
bossbar set minecraft:loadstructures visible false



#Scene
scoreboard objectives add scene dummy
execute as @a unless entity @s[scores={scene=1..}] run scoreboard players set @s scene 1





#forceload
execute in the_end run function main:end_practice/forceload

execute in the_end run forceload add 944 992
execute in the_end run forceload add 1048 1000


replaceitem entity @s enderchest.0 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.1 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.2 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.3 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.4 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.5 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.6 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.7 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.8 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.18 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.19 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.20 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.21 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.22 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.23 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.24 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.25 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}
replaceitem entity @s enderchest.26 minecraft:gray_stained_glass_pane{clear:1,display:{Name:'{"text":""}'},HideFlags:63}

################################################################################################################################################################################################################################################################
#Auto-Restart
execute store success score @s var run clear @s player_head{autoRestart:1}
execute if score @s var matches 1 run scoreboard players add ~autoRestart Settings 1
execute if score ~autoRestart Settings matches 2 run scoreboard players set ~autoRestart Settings 0
execute if score ~autoRestart Settings matches 0 run replaceitem entity @s enderchest.10 minecraft:player_head{autoRestart:1,display:{Name:'[{"text":"Automatic Restart","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"\\u274c","color":"red","italic":"true"}]'},SkullOwner:{Id:[I;878212333,2055292203,-2111944293,-1375201589],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTkxOWQxNTk0YmY4MDlkYjdiNDRiMzc4MmJmOTBhNjlmNDQ5YTg3Y2U1ZDE4Y2I0MGViNjUzZmRlYzI3MjIifX19"}]}}}
execute if score ~autoRestart Settings matches 1 run replaceitem entity @s enderchest.10 minecraft:player_head{autoRestart:1,display:{Name:'[{"text":"Automatic Restart","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"\\u2714","color":"green","italic":"true"}]'},SkullOwner:{Id:[I;778189845,1138966710,-1687780152,-1074651499],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk3ZDZkN2JlOTg1ZDA2MjJhNDhlOTA2OThlOTA3M2Y3ZmY4ODEzMjkyODEyZWJkMTczMGRiYTBlMDFjZjE4ZiJ9fX0="}]}}}
################################################################################################################################################################################################################################################################
#Mode
execute store success score @s var run clear @s bow{Mode:1}
execute if score @s var matches 0 store success score @s var run clear @s red_bed{Mode:1}
execute if score @s var matches 1 run scoreboard players add ~Mode Settings 1
execute if score ~Mode Settings matches 2 run scoreboard players set ~Mode Settings 0
execute if score ~Mode Settings matches 0 run replaceitem entity @s enderchest.9 bow{Mode:1,display:{Name:'[{"text":"Mode","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"Default","color":"dark_aqua","italic":"true"}]'},HideFlags:63}
execute if score ~Mode Settings matches 1 run replaceitem entity @s enderchest.9 red_bed{Mode:1,display:{Name:'[{"text":"Mode","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"One Cycle","color":"dark_aqua","italic":"true"}]'}}
################################################################################################################################################################################################################################################################
#End Crystals
execute store success score @s var run clear @s obsidian{endCrystals:1}
execute if score @s var matches 0 store success score @s var run clear @s end_crystal{endCrystals:1}
execute if score @s var matches 1 run scoreboard players add ~endCrystals Settings 1
execute if score ~endCrystals Settings matches 2 run scoreboard players set ~endCrystals Settings 0
execute if score ~endCrystals Settings matches 0 run replaceitem entity @s enderchest.11 minecraft:end_crystal{endCrystals:1,display:{Name:'[{"text":"End Crystals","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"\\u2714","color":"green","italic":"true"}]'}}
execute if score ~endCrystals Settings matches 1 run replaceitem entity @s enderchest.11 minecraft:obsidian{endCrystals:1,display:{Name:'[{"text":"End Crystals","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"\\u274c","color":"red","italic":"true"}]'}}
################################################################################################################################################################################################################################################################
#Actionbar
execute store success score @s var run clear @s tnt{Actionbar:1}
execute if score @s var matches 0 store success score @s var run clear @s clock{Actionbar:1}
execute if score @s var matches 1 run scoreboard players add ~Actionbar Settings 1
execute if score ~Actionbar Settings matches 2 run scoreboard players set ~Actionbar Settings 0
execute if score ~Actionbar Settings matches 0 run replaceitem entity @s enderchest.12 minecraft:clock{Actionbar:1,display:{Name:'[{"text":"Actionbar","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"Timer","color":"dark_aqua","italic":"true"}]'}}
execute if score ~Actionbar Settings matches 1 run replaceitem entity @s enderchest.12 minecraft:tnt{Actionbar:1,display:{Name:'[{"text":"Actionbar","color":"yellow","italic":"false"},{"text":": ","color":"dark_gray"},{"text":"Bed Damage","color":"dark_aqua","italic":"true"}]'}}
################################################################################################################################################################################################################################################################


clear @s

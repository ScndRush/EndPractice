#Reset Signs
execute at @e[tag=endMenuMain,limit=1] run fill ~ ~10 ~ ~ ~20 ~ air

#Header
execute unless entity @e[tag=display_endStatsHead] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~12.5 ~-7.2 ~1.5 {Tags:["endMenu","display_endStatsHead"],CustomName:'[{"text":"------ ","color":"dark_gray"},{"text":"Statistics","color":"yellow"},{"text":" ------","color":"dark_gray"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b}
###################################################################################################################################################################################################################################################################
#Tries
execute unless entity @e[tag=display_endStatsTries] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~12.5 ~-7.6 ~1.5 {Tags:["endMenu","display_endStatsTries"],CustomName:'{"text":" "}',CustomNameVisible:1b,Marker:1b,Invisible:1b}
execute at @e[tag=endMenuMain,limit=1] run setblock ~ ~10 ~ oak_sign[rotation=4]{Text1:'[{"text":"Tries","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~Tries","objective":"var"},"color":"dark_aqua"}]'}
execute at @e[tag=endMenuMain,limit=1] run data modify entity @e[tag=display_endStatsTries,limit=1] CustomName set from block ~ ~10 ~ Text1
###################################################################################################################################################################################################################################################################
#Bed Damage
execute unless entity @e[tag=display_endStatsBedDamage] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~12.5 ~-8 ~1.5 {Tags:["endMenu","display_endStatsBedDamage"],CustomName:'{"text":" "}',CustomNameVisible:1b,Marker:1b,Invisible:1b}

execute if score ~bedsPlaced var matches 0 run data modify entity @e[tag=display_endStatsBedDamage,limit=1] CustomName set value '[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"text":"/","color":"dark_aqua"}]'
execute if score ~bedsPlaced var matches 1 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 2 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 3 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage3","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 4 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage3","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage4","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 5 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage3","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage4","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage5","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 6 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage3","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage4","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage5","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage6","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 7 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage3","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage4","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage5","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage6","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage7","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 8 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage3","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage4","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage5","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage6","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage7","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage8","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~bedsPlaced var matches 9 at @e[tag=endMenuMain,limit=1] run setblock ~ ~11 ~ oak_sign[rotation=4]{Text1:'[{"text":"Bed Damage","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~bedDamage1","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage2","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage3","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage4","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage5","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage6","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage7","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage8","objective":"var"},"color":"dark_aqua"},{"text":"-","color":"gray"},{"score":{"name":"~bedDamage9","objective":"var"},"color":"dark_aqua"}]'}

execute if score ~bedsPlaced var matches 1.. at @e[tag=endMenuMain,limit=1] run data modify entity @e[tag=display_endStatsBedDamage,limit=1] CustomName set from block ~ ~11 ~ Text1
###################################################################################################################################################################################################################################################################
#Dragon Health
execute unless entity @e[tag=display_endStatsDragonHealth] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~12.5 ~-8.4 ~1.5 {Tags:["endMenu","display_endStatsDragonHealth"],CustomName:'{"text":" "}',CustomNameVisible:1b,Marker:1b,Invisible:1b}
execute at @e[tag=endMenuMain,limit=1] run setblock ~ ~12 ~ oak_sign[rotation=4]{Text1:'[{"text":"Dragon Health","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~dragonHealth","objective":"var"},"color":"dark_aqua"}]'}
execute at @e[tag=endMenuMain,limit=1] run data modify entity @e[tag=display_endStatsDragonHealth,limit=1] CustomName set from block ~ ~12 ~ Text1
###################################################################################################################################################################################################################################################################
#Time
execute unless entity @e[tag=display_endStatsTime] at @e[tag=endMenuMain,limit=1] run summon minecraft:armor_stand ~12.5 ~-8.8 ~1.5 {Tags:["endMenu","display_endStatsTime"],CustomName:'{"text":" "}',CustomNameVisible:1b,Marker:1b,Invisible:1b}

execute if score ~TimerInMinutes var matches 10.. if score ~TimerInSeconds var matches 10.. at @e[tag=endMenuMain,limit=1] run setblock ~ ~13 ~ oak_sign[rotation=4]{Text1:'[{"text":"Time","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~TimerInMinutes","objective":"var"},"color":"dark_aqua"},{"text":":","color":"gray"},{"score":{"name":"~TimerInSeconds","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~TimerInMinutes var matches ..9 if score ~TimerInSeconds var matches ..9 at @e[tag=endMenuMain,limit=1] run setblock ~ ~13 ~ oak_sign[rotation=4]{Text1:'[{"text":"Time","color":"yellow"},{"text":": ","color":"gray"},{"text":"0","color":"dark_aqua"},{"score":{"name":"~TimerInMinutes","objective":"var"},"color":"dark_aqua"},{"text":":","color":"gray"},{"text":"0","color":"dark_aqua"},{"score":{"name":"~TimerInSeconds","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~TimerInMinutes var matches 10.. if score ~TimerInSeconds var matches ..9 at @e[tag=endMenuMain,limit=1] run setblock ~ ~13 ~ oak_sign[rotation=4]{Text1:'[{"text":"Time","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"~TimerInMinutes","objective":"var"},"color":"dark_aqua"},{"text":":","color":"gray"},{"text":"0","color":"dark_aqua"},{"score":{"name":"~TimerInSeconds","objective":"var"},"color":"dark_aqua"}]'}
execute if score ~TimerInMinutes var matches ..9 if score ~TimerInSeconds var matches 10.. at @e[tag=endMenuMain,limit=1] run setblock ~ ~13 ~ oak_sign[rotation=4]{Text1:'[{"text":"Time","color":"yellow"},{"text":": ","color":"gray"},{"text":"0","color":"dark_aqua"},{"score":{"name":"~TimerInMinutes","objective":"var"},"color":"dark_aqua"},{"text":":","color":"gray"},{"score":{"name":"~TimerInSeconds","objective":"var"},"color":"dark_aqua"}]'}

execute at @e[tag=endMenuMain,limit=1] run data modify entity @e[tag=display_endStatsTime,limit=1] CustomName set from block ~ ~13 ~ Text1
###################################################################################################################################################################################################################################################################

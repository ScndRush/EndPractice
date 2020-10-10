

execute if score ~initMap var matches 0 if score ~loadStructures var matches 0..29 run title @s times 0 20 0
execute if score ~initMap var matches 0 if score ~loadStructures var matches 30 run title @s times 0 0 0
execute if score ~initMap var matches 0 if score ~loadStructures var matches 0..1 run title @s title {"text":"Initializing...","italic":true,"color":"gray"}
execute if score ~initMap var matches 0 if score ~loadStructures var matches 2 run title @s title ["",{"text":"I","italic":true,"color":"green"},{"text":"nitializing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 3 run title @s title ["",{"text":"In","italic":true,"color":"green"},{"text":"itializing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 4 run title @s title ["",{"text":"Ini","italic":true,"color":"green"},{"text":"tializing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 5 run title @s title ["",{"text":"Init","italic":true,"color":"green"},{"text":"ializing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 6 run title @s title ["",{"text":"Initi","italic":true,"color":"green"},{"text":"alizing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 7..8 run title @s title ["",{"text":"Initia","italic":true,"color":"green"},{"text":"lizing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 9 run title @s title ["",{"text":"Initial","italic":true,"color":"green"},{"text":"izing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 10 run title @s title ["",{"text":"Initiali","italic":true,"color":"green"},{"text":"zing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 11 run title @s title ["",{"text":"Initializ","italic":true,"color":"green"},{"text":"ing...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 12 run title @s title ["",{"text":"Initializi","italic":true,"color":"green"},{"text":"ng...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 13 run title @s title ["",{"text":"Initializin","italic":true,"color":"green"},{"text":"g...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 14..15 run title @s title ["",{"text":"Initializing","italic":true,"color":"green"},{"text":"...","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 16 run title @s title ["",{"text":"Initializing.","italic":true,"color":"green"},{"text":"..","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 17 run title @s title ["",{"text":"Initializing..","italic":true,"color":"green"},{"text":".","italic":true,"color":"gray"}]
execute if score ~initMap var matches 0 if score ~loadStructures var matches 18 run title @s title ["",{"text":"Initializing...","italic":true,"color":"green"},{"text":"","italic":true,"color":"gray"}]


execute if score ~loadStructures var matches 0..18 store result bossbar minecraft:loadstructures value run scoreboard players get ~loadStructures var
execute if score ~loadStructures var matches 0..30 run bossbar set minecraft:loadstructures players @s
execute if score ~loadStructures var matches 0..30 unless entity @s[scores={scene=2}] unless score ~initMap var matches 0 run bossbar set minecraft:loadstructures visible true
execute if score ~loadStructures var matches 30.. run bossbar set minecraft:loadstructures visible false
execute if score ~loadStructures var matches 30.. run bossbar set minecraft:loadstructures value 0


execute as @s[scores={scene=2}] if score ~loadStructures var matches 0..29 run title @s times 0 20 0
execute as @s[scores={scene=2}] if score ~loadStructures var matches 30 run title @s times 0 0 0
execute as @s[scores={scene=2}] if score ~loadStructures var matches 0..1 run title @s title {"text":"Resetting Map...","italic":true,"color":"gray"}
execute as @s[scores={scene=2}] if score ~loadStructures var matches 2 run title @s title ["",{"text":"R","italic":true,"color":"green"},{"text":"esetting Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 3 run title @s title ["",{"text":"Re","italic":true,"color":"green"},{"text":"setting Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 4 run title @s title ["",{"text":"Res","italic":true,"color":"green"},{"text":"etting Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 5 run title @s title ["",{"text":"Rese","italic":true,"color":"green"},{"text":"tting Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 6 run title @s title ["",{"text":"Reset","italic":true,"color":"green"},{"text":"ting Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 7..8 run title @s title ["",{"text":"Resett","italic":true,"color":"green"},{"text":"ing Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 9 run title @s title ["",{"text":"Resetti","italic":true,"color":"green"},{"text":"ng Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 10 run title @s title ["",{"text":"Resettin","italic":true,"color":"green"},{"text":"g Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 11 run title @s title ["",{"text":"Resetting","italic":true,"color":"green"},{"text":" Map...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 12 run title @s title ["",{"text":"Resetting M","italic":true,"color":"green"},{"text":"ap...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 13 run title @s title ["",{"text":"Resetting Ma","italic":true,"color":"green"},{"text":"p...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 14..15 run title @s title ["",{"text":"Resetting Map","italic":true,"color":"green"},{"text":"...","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 16 run title @s title ["",{"text":"Resetting Map.","italic":true,"color":"green"},{"text":"..","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 17 run title @s title ["",{"text":"Resetting Map..","italic":true,"color":"green"},{"text":".","italic":true,"color":"gray"}]
execute as @s[scores={scene=2}] if score ~loadStructures var matches 18 run title @s title ["",{"text":"Resetting Map...","italic":true,"color":"green"},{"text":"","italic":true,"color":"gray"}]

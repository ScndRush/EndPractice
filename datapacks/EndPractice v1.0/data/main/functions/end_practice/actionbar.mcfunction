


execute if score ~Actionbar Settings matches 0 if score ~TimerInMinutes var matches ..9 if score ~TimerInSeconds var matches ..9 run title @a[scores={scene=2}] actionbar ["",{"text":"0"},{"score":{"name":"~TimerInMinutes","objective":"var"}},{"text":":"},{"text":"0"},{"score":{"name":"~TimerInSeconds","objective":"var"}}]
execute if score ~Actionbar Settings matches 0 if score ~TimerInMinutes var matches 10.. if score ~TimerInSeconds var matches ..9 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~TimerInMinutes","objective":"var"}},{"text":":"},{"text":"0"},{"score":{"name":"~TimerInSeconds","objective":"var"}}]
execute if score ~Actionbar Settings matches 0 if score ~TimerInMinutes var matches ..9 if score ~TimerInSeconds var matches 10.. run title @a[scores={scene=2}] actionbar ["",{"text":"0"},{"score":{"name":"~TimerInMinutes","objective":"var"}},{"text":":"},{"score":{"name":"~TimerInSeconds","objective":"var"}}]
execute if score ~Actionbar Settings matches 0 if score ~TimerInMinutes var matches 10.. if score ~TimerInSeconds var matches 10.. run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~TimerInMinutes","objective":"var"}},{"text":":"},{"score":{"name":"~TimerInSeconds","objective":"var"}}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 0 run title @a[scores={scene=2}] actionbar ["",{"text":" "}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 1 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 2 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 3 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage3","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 4 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage3","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage4","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 5 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage3","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage4","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage5","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 6 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage3","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage4","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage5","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage6","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 7 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage3","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage4","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage5","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage6","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage7","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 8 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage3","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage4","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage5","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage6","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage7","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage8","objective":"var"},"bold":false,"color":"dark_aqua"}]
execute if score ~Actionbar Settings matches 1 if score ~bedsPlaced var matches 9 run title @a[scores={scene=2}] actionbar ["",{"score":{"name":"~bedDamage1","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage2","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage3","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage4","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage5","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage6","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage7","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage8","objective":"var"},"bold":false,"color":"dark_aqua"},{"text":"-","color":"dark_gray"},{"score":{"name":"~bedDamage9","objective":"var"},"bold":false,"color":"dark_aqua"}]
title @a[scores={scene=1}] actionbar ["",{"text":" "}]

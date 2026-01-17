# execute as @a[team=dwarf,scores={stone_status=1..}] at @s run function dnd:classes/dwarf/stonestance
execute if score @s stone_status matches ..2 run attribute @s knockback_resistance base set 0.15
execute unless score @s stone_status matches ..2 run attribute @s knockback_resistance base set 1.0

title @s actionbar [{"text":" [","color":"dark_gray"},{"text":"PETRIFIED","color":"gray"},{"text":"]","color":"dark_gray"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"stone_status"},"color":"gray"},{"text":"s","color":"dark_gray"},{"text":")","color":"dark_gray"}]

effect give @s resistance 3 1 true
execute if score @s stone_status matches 29 if score tick cooldown matches 1 run playsound block.anvil.place master @a ~ ~ ~ 1 0.8
execute if score @s stone_status matches 2 if score tick cooldown matches 5 run playsound block.anvil.use master @a ~ ~ ~ 1 1.2
effect give @s strength 2 0 true
execute at @s anchored eyes run particle minecraft:crit ~ ~ ~ 1 1 1 0.2 10
execute at @s anchored feet run particle dust{color:[0.6f,0.6f,0.6f],"scale":2} ~ ~ ~
scoreboard players add master spotted 1
execute if score master spotted matches 1 run effect give @a slowness infinite 200 true
execute if score master spotted matches 1 run effect give @s jump_boost infinite 255 true
execute if score master spotted matches 1.. run title @a subtitle [{"text":"Starting in: ","color":"dark_gray"}]
execute if score master spotted matches 1 run title @a title [{"text":"10","color":"red","bold":true}]
execute if score master spotted matches 1 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 2
execute if score master spotted matches 1 run scoreboard players set master childrensafety 1

execute if score master spotted matches 21 run title @a title [{"text":"9","color":"gold","bold":true}]
execute if score master spotted matches 21 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.8
execute if score master spotted matches 41 run title @a title [{"text":"8","color":"yellow","bold":true}]
execute if score master spotted matches 41 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.6
execute if score master spotted matches 61 run title @a title [{"text":"7","color":"green","bold":true}]
execute if score master spotted matches 61 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.4
execute if score master spotted matches 81 run title @a title [{"text":"6","color":"aqua","bold":true}]
execute if score master spotted matches 81 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.2
execute if score master spotted matches 101 run title @a title [{"text":"5","color":"blue","bold":true}]
execute if score master spotted matches 101 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.1
execute if score master spotted matches 121 run title @a title [{"text":"4","color":"dark_purple","bold":true}]
execute if score master spotted matches 121 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1
execute if score master spotted matches 141 run title @a title [{"text":"3","color":"light_purple","bold":true}]
execute if score master spotted matches 141 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.8
execute if score master spotted matches 161 run title @a title [{"text":"2","color":"white","bold":true}]
execute if score master spotted matches 161 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6
execute if score master spotted matches 181 run title @a title [{"text":"1","color":"gray","bold":true}]
execute if score master spotted matches 181 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.4
execute if score master spotted matches 201 run title @a title [{"text":"NOW!","color":"green","bold":true}]
execute if score master spotted matches 201 as @a at @s run playsound minecraft:item.goat_horn.sound.6 master @s ~ ~ ~ 1 1
execute if score master spotted matches 201 run effect clear @a
execute if score master spotted matches 201 run worldborder set 1500 150s
execute if score master spotted matches 201 run scoreboard players set @a start 0
execute if score master spotted matches 201 run scoreboard players set master childrensafety 0
execute if score master spotted matches 201 run scoreboard players set master spotted 0

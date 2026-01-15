execute if entity @s[team=elf] run execute unless block ~ ~ ~ minecraft:air run function dnd:lib/raycast_hit
execute if entity @s[team=elf] run execute if entity @e[distance=..2,team=!elf,type=!interaction] run function dnd:lib/raycast_hitentity
execute if entity @s[team=elf] run scoreboard players remove @s ray_steps 1
execute if entity @s[team=elf] run execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run particle minecraft:dust{color:[0.0,0.4,0.3],scale:1} ^ ^ ^ 0 0 0 0 5
execute if entity @s[team=elf] run execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.2 run function dnd:lib/raycast
execute as @e[distance=..15,team=!elf] run execute store success score @s spotted run effect clear @s invisibility
execute as @e[scores={spotted=1..}] run effect give @s glowing 2 0 true
execute as @e[scores={spotted=1..}] run scoreboard players set @s spotted 0
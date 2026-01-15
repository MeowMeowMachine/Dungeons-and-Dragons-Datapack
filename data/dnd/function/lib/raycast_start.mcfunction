# elditrich blast
execute if entity @s[team=elf] run scoreboard players set @s ray_steps 500
execute if entity @s[team=elf] run scoreboard players set @s ray_success 0
execute if entity @s[team=elf] run function dnd:lib/raycast
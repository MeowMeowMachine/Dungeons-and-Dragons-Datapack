#execute as @a[team=elf] if entity @s[predicate=dnd:is_sneaking] run scoreboard players add @s snek 1
#execute as @a[team=elf] if score @s snek matches 1.. run function dnd:classes/elf/chargeup
#
execute if score @s snek matches 1 at @s run playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1
execute if score @s snek matches 1.. run effect give @s slowness 1 1 true

execute if score @s snek matches 10 at @s run playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.3
execute if score @s snek matches 10.. run effect give @s slowness 1 2 true
execute if score @s snek matches 20 at @s run playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.6
execute if score @s snek matches 20.. run effect give @s slowness 1 3 true
execute if score @s snek matches 30 at @s run playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 1.8
execute if score @s snek matches 30.. run effect give @s slowness 1 4 true
execute if score @s snek matches 40 at @s run playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 1 2
execute if score @s snek matches 50.. run effect clear @s slowness
execute if score @s snek matches 50.. at @s run playsound minecraft:block.dispenser.launch master @a ~ ~ ~ 1 1.1
execute if score @s snek matches 50 at @s run function dnd:classes/elf/elditrich_blast
execute if score @s snek matches 25 at @s run playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 1 1.1
execute if score @s snek matches 50 run function dnd:classes/elf/elditrich_blast
execute if score @s snek matches 50.. run scoreboard players set @s snek 0
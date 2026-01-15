# Halfling
execute if entity @s[team=halfling] run effect give @s invisibility 1 1 true
execute if entity @s[team=halfling] run effect give @s speed 1 0 true
execute if entity @s[team=halfling] run effect give @s jump_boost 1 0 true
execute if entity @s[team=halfling] run effect give @s strength 1 0 true
execute if entity @s[team=halfling] unless items entity @s armor.* * run effect give @s speed 1 4 true
execute if entity @s[team=halfling] unless items entity @s armor.* * run effect give @s strength 1 3 true

scoreboard players set @s sneak 0
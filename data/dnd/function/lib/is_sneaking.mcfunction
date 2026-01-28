# Halfling
execute if entity @s[team=halfling] run effect give @s invisibility 1 1 true
execute if entity @s[team=halfling] run effect give @s speed 1 0 true
execute if entity @s[team=halfling] run effect give @s strength 1 1 true
execute if entity @s[team=halfling] run effect give @s regeneration 1 0 true
execute if entity @s[team=halfling] unless items entity @s armor.* * run effect give @s speed 1 1 true
execute if entity @s[team=halfling] unless items entity @s armor.* * run effect give @s strength 1 3 true
execute if entity @s[team=halfling] unless items entity @s armor.* * run effect give @s resistance 1 0 true
scoreboard players set @s sneak 0
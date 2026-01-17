execute unless entity @s[predicate=dnd:water_resistance] run execute if block ~ ~ ~ water run damage @s 3 freeze

execute unless entity @s[predicate=dnd:water_resistance] run execute if entity @s[predicate=dnd:can_see_sky] if predicate dnd:is_rain run effect give @s slowness 1 1 true
execute unless entity @s[predicate=dnd:water_resistance] run execute if entity @s[predicate=dnd:can_see_sky] if predicate dnd:is_rain run effect give @s weakness 1 0 true
effect give @s fire_resistance 1 0 true
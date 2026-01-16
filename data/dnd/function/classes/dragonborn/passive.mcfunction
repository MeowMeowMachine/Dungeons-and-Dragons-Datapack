execute if block ~ ~ ~ water run damage @s 3 freeze

execute if entity @s[predicate=dnd:can_see_sky] if predicate dnd:is_rain run effect give @s slowness 1 1 true
execute if entity @s[predicate=dnd:can_see_sky] if predicate dnd:is_rain run effect give @s weakness 1 0 true
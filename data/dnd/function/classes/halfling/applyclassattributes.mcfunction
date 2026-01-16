attribute @s minecraft:max_health base set 14
attribute @s minecraft:attack_damage base set 0.9
attribute @s minecraft:armor base set 3
attribute @s minecraft:knockback_resistance base set 0.05
attribute @s minecraft:movement_speed base set 0.23
attribute @s minecraft:attack_speed base set 5
attribute @s step_height base set 1
attribute @s minecraft:entity_interaction_range base set 2.5
attribute @s minecraft:block_interaction_range base set 3.0

execute as @s store result storage dnd:temp_height scale.height float 0.01 run random value 56..66
function dnd:lib/changeheight with storage dnd:temp_height scale

attribute @s sneaking_speed base set 0.6
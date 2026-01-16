attribute @s minecraft:max_health base set 28
attribute @s minecraft:attack_damage base set 1.2
attribute @s minecraft:armor base set 5
attribute @s minecraft:knockback_resistance base set 0.15
attribute @s minecraft:movement_speed base set 0.12
attribute @s minecraft:attack_speed base set 3.8

attribute @s minecraft:entity_interaction_range base set 3.5
attribute @s minecraft:block_interaction_range base set 6.0

# roll size
#shift under 1block gap
#sum 0.66>=
#halfling 0.56->0.66

#basis 0.67 0.67-0.8

execute as @s store result storage dnd:temp_height scale.height float 0.01 run random value 67..80
function dnd:lib/changeheight with storage dnd:temp_height scale

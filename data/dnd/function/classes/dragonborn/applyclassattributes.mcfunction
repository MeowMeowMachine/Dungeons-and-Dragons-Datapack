attribute @s minecraft:max_health base set 26
attribute @s minecraft:attack_damage base set 6
attribute @s minecraft:armor base set 4
attribute @s minecraft:knockback_resistance base set 0.1
attribute @s minecraft:movement_speed base set 0.15
attribute @s step_height base set 1
attribute @s minecraft:attack_speed base set 3.8

attribute @s entity_interaction_range base set 5.5
attribute @s block_interaction_range base set 7

execute unless score @s IALREADYHAVEMYHEIGHT matches 1 run execute as @s store result storage dnd:temp_height scale.height float 0.01 run random value 115..125
scoreboard players set @s IALREADYHAVEMYHEIGHT 1
function dnd:lib/changeheight with storage dnd:temp_height scale

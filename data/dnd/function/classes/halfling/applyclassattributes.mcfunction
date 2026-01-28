attribute @s minecraft:max_health base set 16
attribute @s minecraft:attack_damage base set 1.5
attribute @s minecraft:armor base set 3
attribute @s minecraft:knockback_resistance base set 0.05
attribute @s minecraft:movement_speed base set 0.23
attribute @s minecraft:attack_speed base set 4.7
attribute @s step_height base set 1
attribute @s minecraft:entity_interaction_range base set 3.5
attribute @s minecraft:block_interaction_range base set 4.0

execute unless score @s IALREADYHAVEMYHEIGHT matches 1 run execute as @s store result storage dnd:temp_height scale.height float 0.01 run random value 56..66
execute unless score @s IALREADYHAVEMYHEIGHT matches 1 run function dnd:lib/changeheight with storage dnd:temp_height scale
scoreboard players set @s IALREADYHAVEMYHEIGHT 1
attribute @s sneaking_speed base set 0.7
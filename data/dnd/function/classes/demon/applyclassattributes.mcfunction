attribute @s minecraft:max_health base set 22
attribute @s minecraft:movement_speed base set 0.25
attribute @s minecraft:attack_damage base set 3
attribute @s minecraft:armor base set 2
attribute @s minecraft:armor_toughness base set 0
attribute @s minecraft:knockback_resistance base set 0.1
attribute @s minecraft:luck base set 0
attribute @s minecraft:attack_speed base set 5
attribute @s minecraft:follow_range base set 16
attribute @s max_absorption base set 0


attribute @s block_interaction_range base set 5
attribute @s step_height base set 0.6
attribute @s entity_interaction_range base set 4

execute unless score @s IALREADYHAVEMYHEIGHT matches 1 run execute as @s store result storage dnd:temp_height scale.height float 0.01 run random value 90..110


execute unless score @s IALREADYHAVEMYHEIGHT matches 1 run function dnd:lib/changeheight with storage dnd:temp_height scale
scoreboard players set @s IALREADYHAVEMYHEIGHT 1
execute at @a run playsound entity.elder_guardian.hurt master @a ~ ~ ~ 1 0.5
execute as @s store result score @s deathmsgid run random roll 0..8
execute if score @s deathmsgid matches 0 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" has perished.","color":"gray"}]
execute if score @s deathmsgid matches 1 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" has perished.","color":"gray"}]
execute if score @s deathmsgid matches 2 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was slain in combat.","color":"gray"}]
execute if score @s deathmsgid matches 3 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was consumed by darkness.","color":"gray"}]
execute if score @s deathmsgid matches 4 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" met a frozen end.","color":"gray"}]
execute if score @s deathmsgid matches 5 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was lost to the void.","color":"gray"}]
execute if score @s deathmsgid matches 6 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" succumbed to the cold.","color":"gray"}]
execute if score @s deathmsgid matches 7 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was claimed by the shadows.","color":"gray"}]
execute if score @s deathmsgid matches 8 run tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" perished in agony.","color":"gray"}]
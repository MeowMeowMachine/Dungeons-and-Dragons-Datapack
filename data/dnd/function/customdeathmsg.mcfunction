execute at @a run playsound entity.elder_guardian.hurt master @a ~ ~ ~ 1 0.5

tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" has perished.","color":"gray"}]
tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was slain in combat.","color":"gray"}]
tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was consumed by darkness.","color":"gray"}]
tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" met a frozen end.","color":"gray"}]
tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was lost to the void.","color":"gray"}]
tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" succumbed to the cold.","color":"gray"}]
tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" was claimed by the shadows.","color":"gray"}]
tellraw @a [{"selector":"@s","color":"dark_gray"},{"text":" perished in agony.","color":"gray"}]
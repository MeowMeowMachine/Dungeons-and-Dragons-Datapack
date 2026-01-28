execute as @s at @s anchored eyes positioned ^ ^ ^ run function dnd:lib/raycast_start
execute as @s at @s run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 0.5
scoreboard players set @s cooldown 30
scoreboard players set @s ileftclicked 0
kill @e[type=interaction,tag=elditrich_blast]
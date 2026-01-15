# hit block
execute positioned ~ ~ ~ run particle explosion ~ ~ ~ 0.1 0.1 0.1 0 10 force
execute positioned ~ ~ ~ run playsound entity.generic.explode master @a ~ ~ ~ 0.5 0.5
execute positioned ~ ~ ~ run playsound minecraft:entity.warden.death master @a ~ ~ ~ 1 0.8
execute positioned ~ ~ ~ as @e[distance=..3] run damage @s 20 minecraft:explosion
execute positioned ~ ~ ~ as @e[distance=3..6] run damage @s 13 minecraft:explosion


scoreboard players set @s ray_success 1
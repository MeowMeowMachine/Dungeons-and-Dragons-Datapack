scoreboard players set @s cooldown 2

execute at @s as @e[distance=..5,scores={dmgreceived=1..}] run damage @s 4 indirect_magic
execute at @s run playsound entity.evoker_fangs.attack master @a ~ ~ ~ 1 1
effect give @s instant_health

execute if score @s health matches 17.. run effect give @s absorption 5 0

execute if score @s health matches 20.. run effect give @s absorption 5 1
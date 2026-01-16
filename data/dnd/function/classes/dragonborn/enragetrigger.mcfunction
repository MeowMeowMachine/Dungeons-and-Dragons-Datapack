execute unless entity @e[type=interaction,tag=enrage,distance=..1] run summon interaction ~ ~1 ~ {Tags:["enrage"],width:1.0,height:1.0}
execute at @s as @e[type=interaction,tag=enrage,distance=..3] run tp ~ ~1 ~
execute as @e[type=interaction,tag=enrage] on attacker at @s anchored eyes run scoreboard players operation @s dynamicbossbardistributor = distributor dynamicbossbardistributor
execute as @e[type=interaction,tag=enrage] on attacker at @s anchored eyes run scoreboard players add distributor dynamicbossbardistributor 1
execute as @e[type=interaction,tag=enrage] on attacker at @s anchored eyes run scoreboard players set @s enraged_status 30

execute as @e[type=interaction,tag=enrage] on attacker run scoreboard players set @s cooldown 600
execute as @e[type=interaction,tag=enrage] on attacker run kill @e[type=interaction,distance=..2,tag=enrage]
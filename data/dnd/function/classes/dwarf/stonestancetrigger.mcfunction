execute unless entity @e[type=interaction,tag=stonestance,distance=..1] run summon interaction ~ ~1 ~ {Tags:["stonestance"],width:1.0,height:1.0}
execute at @s as @e[type=interaction,tag=stonestance,distance=..3] run tp ~ ~1 ~
#execute as @e[type=interaction,tag=stonestance] on attacker at @s anchored eyes run scoreboard players operation @s dynamicbossbardistributor = distributor dynamicbossbardistributor
#execute as @e[type=interaction,tag=stonestance] on attacker at @s anchored eyes run scoreboard players add distributor dynamicbossbardistributor 1
execute as @e[type=interaction,tag=stonestance] on attacker at @s anchored eyes run scoreboard players set @s stone_status 30

execute as @e[type=interaction,tag=stonestance] on attacker run scoreboard players set @s cooldown 300
execute as @e[type=interaction,tag=stonestance] on attacker run kill @e[type=interaction,distance=..2,tag=stonestance]
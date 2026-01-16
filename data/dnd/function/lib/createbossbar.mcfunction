#$execute unless score @s ihavabarwtf matches 1 run bossbar add $(id) tmp
#execute unless score @s ihavabarwtf matches 1 run say bar made
#$execute unless score @s ihavabarwtf matches 1 run bossbar set minecraft:$(id) visible true
#$execute unless score @s ihavabarwtf matches 1 run bossbar set minecraft:$(id) players @s
#$execute unless score @s ihavabarwtf matches 1 if entity @s[team=dragonborn,scores={enraged_status=120..}] run bossbar set minecraft:$(id) name "§4§lEnraged!"
#$execute unless score @s ihavabarwtf matches 1 if entity @s[team=dragonborn,scores={enraged_status=120..}] run bossbar set minecraft:$(id) max 120
#$execute unless score @s ihavabarwtf matches 1 if entity @s[team=dragonborn,scores={enraged_status=120..}] run bossbar set minecraft:$(id) color red
## say ok
#execute unless score @s enraged_status matches 1 run scoreboard players set @s ihavabarwtf 1
## 
## 
## # dragonborn
#$execute store result bossbar $(id) value run scoreboard players get @s[team=dragonborn,scores={enraged_status=1..}] enraged_status
## 
#$execute if score @s enraged_status matches 1 run bossbar remove $(id)
#execute if score @s enraged_status matches 1 run scoreboard players set @s ihavabarwtf 0
#execute if score @s enraged_status matches 1 run scoreboard players reset @s enraged_status
# 
# #UUID0
#  #enrage | dragonborn
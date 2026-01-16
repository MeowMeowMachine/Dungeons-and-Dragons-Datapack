execute as @a unless entity @s[scores={firstjoined=1..}] run function dnd:first_joined
execute as @a if entity @s[team=undecided] run function dnd:first_joined

execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] run function dnd:lib/enableclasschange
execute as @a[team=undecided] at @s run kill @e[type=item,distance=..3]

execute as @a[scores={sneak=1..}] run function dnd:lib/is_sneaking


execute as @a if entity @s[team=elf,predicate=dnd:is_sneaking,scores={cooldown=0,toggleability=0},nbt={SelectedItem:{id:"minecraft:bow"}}] at @s unless entity @e[type=interaction,tag=elditrich_blast,distance=..2] run summon interaction ~ ~1 ~ {Tags:["elditrich_blast"],width:1.0,height:1.0}
execute as @a if entity @s[team=elf,predicate=dnd:is_sneaking,scores={cooldown=0,toggleability=0},nbt={SelectedItem:{id:"minecraft:bow"}}] at @s as @e[type=interaction,tag=elditrich_blast,distance=..3] as @p[team=elf,nbt={SelectedItem:{id:"minecraft:bow"}},limit=1] at @s run tp @e[type=interaction,tag=elditrich_blast,distance=..3] ~ ~1.2 ~
execute as @e[type=interaction,tag=elditrich_blast] at @s unless entity @e[type=player,distance=..1.5,team=elf,nbt={SelectedItem:{id:"minecraft:bow"}},predicate=dnd:is_sneaking] run kill @s


execute as @e[type=interaction,tag=elditrich_blast] on attacker if entity @s[scores={cooldown=0}] run scoreboard players set @s ileftclicked 1
execute as @e[type=interaction,tag=elditrich_blast] on attacker at @s run kill @e[type=interaction,distance=..2,tag=elditrich_blast]

execute as @a[team=elf] if entity @s[predicate=dnd:is_sneaking,scores={cooldown=0}] if score @s ileftclicked matches 1 run scoreboard players add @s snek 1
execute as @a[team=elf] if score @s[scores={cooldown=0}] snek matches 1.. if score @s ileftclicked matches 1 run function dnd:classes/elf/chargeup
execute as @a[team=elf] unless entity @s[predicate=dnd:is_sneaking] run scoreboard players set @s snek 0
execute as @a[team=elf] unless entity @s[predicate=dnd:is_sneaking] run scoreboard players set @s ileftclicked 0

# cooldown
scoreboard players add tick cooldown 1
execute if score tick cooldown matches 20.. as @a if score @s cooldown matches 1.. run scoreboard players remove @s cooldown 1
execute if score tick cooldown matches 20.. run scoreboard players set tick cooldown 0
execute as @a unless score @s cooldown matches -1.. run scoreboard players set @s cooldown 0





execute as @a[team=!undecided] run scoreboard players reset @s changeracedwarf 
execute as @a[team=!undecided] run scoreboard players reset @s changeraceelf 
execute as @a[team=!undecided] run scoreboard players reset @s changeracedemon 
execute as @a[team=!undecided] run scoreboard players reset @s changeracehalforc 
execute as @a[team=!undecided] run scoreboard players reset @s changeracehalfling 
execute as @a[team=!undecided] run scoreboard players reset @s changeracedragonborn 



## Dwarf
execute as @a[team=dwarf,scores={toggleability=0}] at @s run function dnd:classes/dwarf/effect
execute as @a[team=dwarf] at @s run function dnd:classes/dwarf/passive

## Dragonborn
execute as @a[team=dragonborn] at @s run function dnd:classes/dragonborn/passive
execute as @a[team=dragonborn,scores={toggleability=0}] at @s run function dnd:classes/dragonborn/effect

## Elf
# execute as @a[team=elf] at @s run function dnd:classes/elf/passive
execute as @a[team=elf,scores={toggleability=0}] at @s run function dnd:classes/elf/effect



execute as @a if score @s toggleability matches 1 run kill @e[type=interaction,tag=elditrich_blast,distance=2]
execute as @a if score @s toggleabilitycd matches 1 unless score @s toggleability matches 1 run title @s actionbar [{"text":" [","color":"dark_gray"},{"text":"CD: ","color":"gray"},{"score":{"name":"@s","objective":"cooldown"},"color":"aqua"},{"text":"s","color":"blue"},{"text":"]","color":"dark_gray"}]
execute as @a if score @s toggleabilitycd matches 1 if score @s toggleability matches 1 run title @s actionbar [{"text":" [","color":"dark_gray"},{"text":"CD: ","color":"gray"},{"score":{"name":"@s","objective":"cooldown"},"color":"aqua"},{"text":"s","color":"blue"},{"text":"]","color":"dark_gray"},{"text":" (DISABLED)","color":"red"}]

scoreboard players enable @a toggleabilitycd
scoreboard players enable @a toggleability

execute as @a[scores={toggleabilitycd=2..}] run scoreboard players set @s toggleabilitycd 0
execute as @a unless score @s toggleabilitycd matches -1.. run scoreboard players set @s toggleabilitycd 1

execute as @a[scores={toggleability=2..}] run scoreboard players set @s toggleability 0
execute as @a unless score @s toggleability matches -1.. run scoreboard players set @s toggleability 1
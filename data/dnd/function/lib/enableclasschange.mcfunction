
execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] if entity @s[team=elf] run scoreboard players remove master teamsum_elf 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] if entity @s[team=demon] run scoreboard players remove master teamsum_demon 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] if entity @s[team=halforc] run scoreboard players remove master teamsum_halforc 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] if entity @s[team=halfling] run scoreboard players remove master teamsum_halfling 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] if entity @s[team=dragonborn] run scoreboard players remove master teamsum_dragonborn 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] if entity @s[team=dwarf] run scoreboard players remove master teamsum_dwarf 1


execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] run team join undecided @s
scoreboard players enable @s changeracedwarf
scoreboard players enable @s changeraceelf
scoreboard players enable @s changeracedemon
scoreboard players enable @s changeracehalforc
scoreboard players enable @s changeracehalfling
scoreboard players enable @s changeracedragonborn

execute as @s if score @s changeracedwarf matches 1 if score master teamsum_dwarf < master master_maxclassuser run team join dwarf @s
execute as @s if score @s changeracedwarf matches 1 if score master teamsum_dwarf < master master_maxclassuser run function dnd:lib/iamnowclass
execute as @s[team=dwarf] run scoreboard players add master teamsum_dwarf 1
execute as @s if score @s changeraceelf matches 1 unless score master teamsum_elf >= master master_maxclassuser run tellraw @s [{"text":"This class is full! Choose another one.","color":"red"}]



execute as @s if score @s changeraceelf matches 1 if score master teamsum_elf < master master_maxclassuser run team join elf @s
execute as @s if score @s changeraceelf matches 1 if score master teamsum_elf < master master_maxclassuser run function dnd:lib/iamnowclass
execute as @s[team=elf] run scoreboard players add master teamsum_elf 1

execute as @s if score @s changeracedemon matches 1 unless score master teamsum_demon >= master master_maxclassuser run tellraw @s [{"text":"This class is full! Choose another one.","color":"red"}]
execute as @s if score @s changeracedemon matches 1 if score master teamsum_demon < master master_maxclassuser run team join demon @s
execute as @s if score @s changeracedemon matches 1 if score master teamsum_demon < master master_maxclassuser run function dnd:lib/iamnowclass
execute as @s[team=demon] run scoreboard players add master teamsum_demon 1
execute as @s if score @s changeracehalforc matches 1 unless score master teamsum_halforc >= master master_maxclassuser run tellraw @s [{"text":"This class is full! Choose another one.","color":"red"}]

execute as @s if score @s changeracehalforc matches 1 if score master teamsum_halforc < master master_maxclassuser run team join halforc @s
execute as @s if score @s changeracehalforc matches 1 if score master teamsum_halforc < master master_maxclassuser run function dnd:lib/iamnowclass
execute as @s[team=halforc] run scoreboard players add master teamsum_halforc 1
execute as @s if score @s changeracehalfling matches 1 unless score master teamsum_halfling >= master master_maxclassuser run tellraw @s [{"text":"This class is full! Choose another one.","color":"red"}]

execute as @s if score @s changeracehalfling matches 1 if score master teamsum_halfling < master master_maxclassuser run team join halfling @s
execute as @s if score @s changeracehalfling matches 1 if score master teamsum_halfling < master master_maxclassuser run function dnd:lib/iamnowclass
execute as @s[team=halfling] run scoreboard players add master teamsum_halfling 1
execute as @s if score @s changeracedragonborn matches 1 unless score master teamsum_dragonborn >= master master_maxclassuser run tellraw @s [{"text":"This class is full! Choose another one.","color":"red"}]

execute as @s if score @s changeracedragonborn matches 1 if score master teamsum_dragonborn < master master_maxclassuser run team join dragonborn @s
execute as @s if score @s changeracedragonborn matches 1 if score master teamsum_dragonborn < master master_maxclassuser run function dnd:lib/iamnowclass


execute if entity @s[team=dwarf] run function dnd:classes/dwarf/applyclassattributes
execute if entity @s[team=elf] run function dnd:classes/elf/applyclassattributes
execute if entity @s[team=demon] run function dnd:classes/demon/applyclassattributes
execute if entity @s[team=halforc] run function dnd:classes/halforc/applyclassattributes
execute if entity @s[team=halfling] run function dnd:classes/halfling/applyclassattributes
execute if entity @s[team=dragonborn] run function dnd:classes/dragonborn/applyclassattributes


scoreboard players set @s changeracedwarf 0
scoreboard players set @s changeraceelf 0
scoreboard players set @s changeracedemon 0
scoreboard players set @s changeracehalforc 0
scoreboard players set @s changeracehalfling 0
scoreboard players set @s changeracedragonborn 0

execute unless entity @s[team=undecided] run clear @s minecraft:written_book

execute unless entity @s[team=undecided] run effect clear @s
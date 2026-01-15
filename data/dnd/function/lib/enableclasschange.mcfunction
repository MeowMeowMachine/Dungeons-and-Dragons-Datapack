execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] run team join undecided @s

scoreboard players enable @s changeracedwarf
scoreboard players enable @s changeraceelf
scoreboard players enable @s changeracedemon
scoreboard players enable @s changeracehalforc
scoreboard players enable @s changeracehalfling
scoreboard players enable @s changeracedragonborn

execute as @s if score @s changeracedwarf matches 1 run team join dwarf @s
execute as @s if score @s changeraceelf matches 1 run team join elf @s
execute as @s if score @s changeracedemon matches 1 run team join demon @s
execute as @s if score @s changeracehalforc matches 1 run team join halforc @s
execute as @s if score @s changeracehalfling matches 1 run team join halfling @s
execute as @s if score @s changeracedragonborn matches 1 run team join dragonborn @s
scoreboard players set @s changeracedwarf 0
scoreboard players set @s changeraceelf 0
scoreboard players set @s changeracedemon 0
scoreboard players set @s changeracehalforc 0
scoreboard players set @s changeracehalfling 0
scoreboard players set @s changeracedragonborn 0

function dnd:classes/resetclassattributes
execute if entity @s[team=dwarf] run function dnd:classes/dwarf/applyclassattributes
execute if entity @s[team=elf] run function dnd:classes/elf/applyclassattributes
execute if entity @s[team=demon] run function dnd:classes/demon/applyclassattributes
execute if entity @s[team=halforc] run function dnd:classes/halforc/applyclassattributes
execute if entity @s[team=halfling] run function dnd:classes/halfling/applyclassattributes
execute if entity @s[team=dragonborn] run function dnd:classes/dragonborn/applyclassattributes


execute unless entity @s[team=undecided] run clear @s minecraft:written_book

execute unless entity @s[team=undecided] run effect clear @s
execute as @a unless entity @s[scores={firstjoined=1..}] run function dnd:first_joined
execute as @a if entity @s[team=undecided] run function dnd:first_joined

execute as @a[nbt={SelectedItem:{components:{"minecraft:written_book_content":{author:"God"}}}}] run function dnd:lib/enableclasschange
execute as @a[team=undecided] at @s run kill @e[type=item,distance=..3]

execute as @a[scores={sneak=1..}] run function dnd:lib/is_sneaking
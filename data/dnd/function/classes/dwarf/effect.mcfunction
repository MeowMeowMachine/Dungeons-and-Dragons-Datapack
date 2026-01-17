effect give @s haste 2 1 true
enchant @s fortune 1
enchant @s efficiency 1
enchant @s unbreaking 2


execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_gold"}}] run give @s minecraft:gold_ingot 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_gold"}}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_gold"}}] run clear @s raw_gold 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_iron"}}] run give @s minecraft:iron_ingot 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_iron"}}] run clear @s raw_iron 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_iron"}}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_copper"}}] run give @s minecraft:copper_ingot 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_copper"}}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:raw_copper"}}] run clear @s raw_copper 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:ancient_debris"}}] run give @s minecraft:netherite_scrap 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:ancient_debris"}}] run clear @s ancient_debris 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:ancient_debris"}}] run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:cobblestone"}}] run give @s minecraft:stone 1
execute if entity @s[predicate=dnd:is_sneaking,nbt={SelectedItem:{id:"minecraft:cobblestone"}}] run clear @s cobblestone 1

execute if entity @s[predicate=dnd:is_sneaking] run function dnd:classes/dwarf/yumminerals
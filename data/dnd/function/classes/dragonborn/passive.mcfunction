execute unless entity @s[predicate=dnd:water_resistance] run execute if block ~ ~ ~ water run damage @s 3 freeze

execute unless entity @s[predicate=dnd:water_resistance] run execute if entity @s[predicate=dnd:can_see_sky] if predicate dnd:is_rain run effect give @s slowness 1 1 true
execute unless entity @s[predicate=dnd:water_resistance] run execute if entity @s[predicate=dnd:can_see_sky] if predicate dnd:is_rain run effect give @s weakness 1 0 true
effect give @s fire_resistance 1 0 true

execute unless entity @s[predicate=dnd:water_resistance] run execute if block ~ ~ ~ lava run effect give @s regeneration 1 1 true

# When sneaking: convert one selected raw food to its cooked equivalent (play blaze shoot, then give, then clear)
execute if entity @s[predicate=dnd:is_sneaking] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:beef"}}] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:beef"}}] run give @s minecraft:cooked_beef 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:beef"}}] run clear @s minecraft:beef 1

execute if entity @s[predicate=dnd:is_sneaking] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:porkchop"}}] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:porkchop"}}] run give @s minecraft:cooked_porkchop 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:porkchop"}}] run clear @s minecraft:porkchop 1

execute if entity @s[predicate=dnd:is_sneaking] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:chicken"}}] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:chicken"}}] run give @s minecraft:cooked_chicken 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:chicken"}}] run clear @s minecraft:chicken 1

execute if entity @s[predicate=dnd:is_sneaking] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:rabbit"}}] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:rabbit"}}] run give @s minecraft:cooked_rabbit 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:rabbit"}}] run clear @s minecraft:rabbit 1

execute if entity @s[predicate=dnd:is_sneaking] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:cod"}}] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:cod"}}] run give @s minecraft:cooked_cod 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:cod"}}] run clear @s minecraft:cod 1

execute if entity @s[predicate=dnd:is_sneaking] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:salmon"}}] run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:salmon"}}] run give @s minecraft:cooked_salmon 1
execute if entity @s[predicate=dnd:is_sneaking] if entity @s[nbt={SelectedItem:{id:"minecraft:salmon"}}] run clear @s minecraft:salmon 1
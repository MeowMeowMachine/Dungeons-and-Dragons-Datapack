execute if entity @s[predicate=dnd:is_mineral] unless entity @e[type=interaction,tag=mineral,distance=..1] run summon interaction ~ ~1 ~ {Tags:["mineral"],width:1.0,height:1.0}
execute if entity @s[predicate=dnd:is_mineral] at @s as @e[type=interaction,tag=mineral,distance=..3] run tp ~ ~1 ~

# Consume any mineral item from the predicate list
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] run effect give @s saturation 1 3 true
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] run playsound entity.player.burp master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] run clear @s minecraft:copper_ingot 1
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run effect give @s saturation 1 5 true
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run playsound entity.player.burp master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run clear @s minecraft:gold_ingot 1
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] run effect give @s saturation 600 20 true
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] run playsound entity.player.burp master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] run clear @s minecraft:netherite_scrap 1
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] run effect give @s saturation 1 4 true
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] run playsound entity.player.burp master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] run clear @s minecraft:iron_ingot 1
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run effect give @s saturation 1 8 true
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run playsound entity.player.burp master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run clear @s minecraft:diamond 1
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:emerald"}}] run effect give @s saturation 1 7 true
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:emerald"}}] run playsound entity.player.burp master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:emerald"}}] run clear @s minecraft:emerald 1
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:quartz"}}] run effect give @s saturation 1 6 true
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:quartz"}}] run playsound entity.player.burp master @a ~ ~ ~ 0.5 1.2
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:quartz"}}] run clear @s minecraft:quartz 1


execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker run scoreboard players set @s cooldown 2 
execute if entity @s[predicate=dnd:is_mineral] as @e[type=interaction,tag=mineral] on attacker run kill @e[type=interaction,distance=..2,tag=mineral]
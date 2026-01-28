title @s actionbar [{"text":" [","color":"dark_gray"},{"text":"Enraged!","color":"red"},{"text":"]","color":"dark_gray"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"enraged_status"},"color":"aqua"},{"text":"s","color":"blue"},{"text":")","color":"dark_gray"}]

effect give @s resistance 1 0 false
effect give @s regeneration 1 1 false
effect give @s speed 1 0 false
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run effect give @s resistance 1 1 false
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run effect give @s regeneration 1 2 false
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run effect give @s strength 1 1 false

particle flame ^ ^1 ^-2 0.6 1.0 0.6 0.02 20 force
tellraw @a [{"text":"-----=====<<<{{{ DnD}}>>>=====-----","color":"gold"}]
tellraw @a [{"text":"DnD Classes Datapack ","color":"red"},{"text":"sucessfully","color":"green"},{"text":" loaded!","color":"red"}]
tellraw @a [{"text":"Created by MeowMeowMachine","color":"light_purple"}]
tellraw @a [{"text":"Version: ","color":"gold"},{"text":"1.0.0","color":"green"}]
tellraw @a [{"text":"Special thanks to: ","color":"aqua"},{"text":"ZamboniWizard","color":"blue"},{"text":" & ","color":"aqua"},{"text":"Kaiine","color":"blue"}]
tellraw @a [{"text":"-----=====<<<{{{ DnD}}>>>=====-----","color":"gold"}]

# give @s written_book[written_book_content={pages:[[["",{"text":"Choose your Race!","bold":true},"\n",{"text":"(This server has competetive racism)","italic":true},"\n-----------------\n",{"text":"Dwarf","bold":true,"color":"dark_red","click_event":{"action":"run_command","command":"trigger changeracedwarf"},"hover_event":{"action":"show_text","value":[{"text":"Click here to become a ","color":"dark_gray"},{"text":"Dwarf","bold":true,"color":"dark_red"},{"text":"!","bold":true,"color":"dark_gray"}]}},"\n",{"text":"Elf","bold":true,"color":"#74ca63","click_event":{"action":"run_command","command":"trigger changeraceelf"},"hover_event":{"action":"show_text","value":[{"text":"Click here to become a ","color":"dark_gray"},{"text":"Elf","bold":true,"color":"green"},{"text":"!","bold":true,"color":"dark_gray"}]}},"\n",{"text":"Demon","bold":true,"color":"red","click_event":{"action":"run_command","command":"trigger changeracedemon"},"hover_event":{"action":"show_text","value":[{"text":"Click here to become a ","color":"dark_gray"},{"text":"Demon","bold":true,"color":"red"},{"text":"!","bold":true,"color":"dark_gray"}]}},"\n",{"text":"Halforc","bold":true,"color":"#324b30","click_event":{"action":"run_command","command":"trigger changeracehalforc"},"hover_event":{"action":"show_text","value":[{"text":"Click here to become a ","color":"dark_gray"},{"text":"Halforc","bold":true,"color":"dark_green"},{"text":"!","bold":true,"color":"dark_gray"}]}},"\n",{"text":"Halfling","bold":true,"color":"#43a889","click_event":{"action":"run_command","command":"trigger changeracehalfling"},"hover_event":{"action":"show_text","value":[{"text":"Click here to become a ","color":"dark_gray"},{"text":"Halfling","bold":true,"color":"aqua"},{"text":"!","bold":true,"color":"dark_gray"}]}},"\n",{"text":"Dragonborn","bold":true,"color":"#a76d1b","click_event":{"action":"run_command","command":"trigger changeracedragonborn"},"hover_event":{"action":"show_text","value":[{"text":"Click here to become a ","color":"dark_gray"},{"text":"Dragonborn","bold":true,"color":"gold"},{"text":"!","bold":true,"color":"dark_gray"}]}},"\n-----------------\nYou may change it ",{"text":"later","bold":true},"..   Read Discord for more Info!"]]],title:"Race Modifier 3000",author:God,generation:3}]

team add dwarf
team add elf
team add halfling
team add demon
team add halforc
team add dragonborn
team add undecided

title @a times 1 2 1

scoreboard objectives add firstjoined dummy
scoreboard objectives add changeracedwarf trigger
scoreboard objectives add changeraceelf trigger
scoreboard objectives add changeracedemon trigger
scoreboard objectives add changeracehalforc trigger
scoreboard objectives add changeracehalfling trigger
scoreboard objectives add changeracedragonborn trigger
scoreboard objectives add firstjoinedclear dummy

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add raycast dummy
scoreboard objectives add ray_steps dummy
scoreboard objectives add ray_success dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add toggleabilitycd trigger
scoreboard objectives add toggleability trigger
scoreboard objectives add snek dummy
scoreboard objectives add ileftclicked dummy
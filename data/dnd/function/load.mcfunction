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

team modify dwarf color dark_red
team modify dwarf prefix [{"text":"[","color":"dark_red"},{"text":"D","color":"#b10808"},{"text":"w","color":"#a51010"},{"text":"a","color":"#991919"},{"text":"r","color":"#8c2121"},{"text":"f","color":"#802929"},{"text":"] ","color":"#743232"}]

team modify elf color green
team modify elf prefix [{"text":"[E","color":"#60fe3f"},{"text":"l","color":"#4ffe75"},{"text":"f] ","color":"#3ffeac"}]

team modify dragonborn color gold
team modify dragonborn prefix [{"text":"[","color":"gold"},{"text":"D","color":"#cf9833"},{"text":"r","color":"#c68e33"},{"text":"a","color":"#bd8433"},{"text":"g","color":"#b47933"},{"text":"o","color":"#ab6f33"},{"text":"n","color":"#a16532"},{"text":"b","color":"#985b32"},{"text":"o","color":"#8f5032"},{"text":"r","color":"#864632"},{"text":"n","color":"#7d3c32"},{"text":"] ","color":"#743232"}]

team modify demon color red 
team modify demon prefix [{"text":"[","color":"#db2525"},{"text":"D","color":"#c32020"},{"text":"e","color":"#ab1b1b"},{"text":"m","color":"#931717"},{"text":"o","color":"#7b1212"},{"text":"n","color":"#630d0d"},{"text":"] ","color":"#4b0909"}]

team modify halforc color dark_green
team modify halforc prefix [{"text":"[H","color":"#00681f"},{"text":"a","color":"#15641b"},{"text":"l","color":"#2b6017"},{"text":"f","color":"#405c13"},{"text":"o","color":"#56580f"},{"text":"r","color":"#6b540b"},{"text":"c] ","color":"#815007"}]

team modify halfling color light_purple
team modify halfling prefix [{"text":"[H","color":"#dada5e"},{"text":"a","color":"#d7cc6c"},{"text":"l","color":"#d4be7b"},{"text":"f","color":"#d1b08a"},{"text":"l","color":"#cea399"},{"text":"i","color":"#cb95a8"},{"text":"n","color":"#c887b7"},{"text":"g] ","color":"#c67ac6"}]


scoreboard objectives add start trigger

title @a times 0.2s 1s 0.4s

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
scoreboard objectives add spotted dummy
scoreboard objectives add ileftclicked dummy

scoreboard objectives add height dummy

scoreboard objectives add teamsum_dwarf dummy
scoreboard objectives add teamsum_elf dummy
scoreboard objectives add teamsum_demon dummy
scoreboard objectives add teamsum_halforc dummy
scoreboard objectives add teamsum_halfling dummy
scoreboard objectives add teamsum_dragonborn dummy

scoreboard objectives add master_maxclassuser dummy
execute unless score master master_maxclassuser matches -1.. run scoreboard players set master master_maxclassuser 3 
execute unless score master teamsum_demon matches -1.. run scoreboard players set master teamsum_demon 0
execute unless score master teamsum_elf matches -1.. run scoreboard players set master teamsum_elf 0
execute unless score master teamsum_dwarf matches -1.. run scoreboard players set master teamsum_dwarf 0
execute unless score master teamsum_halforc matches -1.. run scoreboard players set master teamsum_halforc 0
execute unless score master teamsum_halfling matches -1.. run scoreboard players set master teamsum_halfling 0
execute unless score master teamsum_dragonborn matches -1.. run scoreboard players set master teamsum_dragonborn 0
execute unless score master childrensafety matches -1.. run scoreboard players set master childrensafety 0
scoreboard objectives add childrensafety trigger

scoreboard objectives add enraged_status dummy

scoreboard objectives add dynamicbossbardistributor dummy
scoreboard objectives add ihavabarwtf dummy
scoreboard objectives add broknetherite minecraft.mined:minecraft.ancient_debris
scoreboard objectives add iamnether dummy
scoreboard objectives add automate_raceupdates dummy
scoreboard objectives add IALREADYHAVEMYHEIGHT dummy
execute unless score master automate_raceupdates matches -1.. run scoreboard players set master automate_raceupdates 1

execute as @a unless score @s toggleabilitycd matches -1.. run scoreboard players set @s toggleabilitycd 1

scoreboard objectives add killer playerKillCount
scoreboard objectives add deathmsgid dummy
scoreboard objectives add victim deathCount
scoreboard objectives add blxtrvld minecraft.custom:walk_one_cm
scoreboard objectives add blockstravel dummy

scoreboard objectives add togglesidebar trigger
scoreboard objectives add dmgdealt minecraft.custom:damage_dealt
scoreboard objectives add dmgreceived minecraft.custom:damage_taken
scoreboard objectives add health health

scoreboard objectives add stone_status dummy
scoreboard objectives add nostopwatch dummy
scoreboard objectives add stopwatchdummy dummy

scoreboard objectives add zawarudo dummy
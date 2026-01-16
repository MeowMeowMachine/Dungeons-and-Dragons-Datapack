
$scoreboard players set servertime start $(time)
scoreboard players set serverboom start 1
tellraw @a [{"text":"----------====<{ DND }}>====----------","color":"dark_red"}]
tellraw @a [{"text":"Stopping server in ","color":"red"}]
$tellraw @a [{"text":"$(time)","color":"dark_red"},{"text":" seconds...","color":"red"}]
tellraw @a [{"text":"Reason: ","color":"red"}]
$tellraw @a {"text":"$(reason)","color":"dark_red"}
tellraw @a [{"text":"----------====<{ DND }}>====----------","color":"dark_red"}]
execute as @a run playsound entity.wither.spawn master @a ~ ~ ~ 1 0.5
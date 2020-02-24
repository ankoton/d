# nearest方式
# 斜めにいる村人に反応してしまう。

me talked to villager.


execute positioned ^4 ^ ^4.01 as @e[type=villager,distance=..5.65685424949] run tag @s add processing1
execute positioned ^-4 ^ ^4.01 as @e[tag=processing1,distance=..5.65685424949] run tag @s add processing

execute as @e[tag=processing,sort=nearest,limit=1] at @s run function lib:glowing_ghost_block

# FIXME
playsound entity.villager.ambient master @s ~ ~ ~ 


tag @e[tag=processing1] remove processing1
tag @e[tag=processing] remove processing

scoreboard players reset @s talk

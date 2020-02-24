#execute幾何学方式 周囲の村人が視線上にいるかどうか判定
# 結果: 近くの村人に反応してしまう……。

me talked to villager.
tag @s add talking

execute positioned ^ ^ ^8.1 as @e[type=villager,distance=..8] positioned as @s positioned ^ ^ ^1000 facing entity @p[tag=talking] eyes positioned ^ ^ ^1000 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=1,dz=0] run tag @s add processing
execute unless entity @e[tag=processing] run tag @e[type=villager,sort=nearest,limit=1] add processing
execute as @e[tag=processing,sort=nearest,limit=1] at @s run function lib:glowing_ghost_block
tag @e[tag=processing] remove processing
tag @s remove talking
scoreboard players reset @s talk

# execute positioned ^ ^ ^8.1 as @e[type=villager,distance=..8] positioned as @s run function lib:glowing_ghost_block

# execute positioned ^ ^ ^8.1 as @e[type=villager,distance=..8] positioned as @s positioned ^ ^ ^1000 facing entity @p eyes positioned ^ ^ ^1000 align xyz positioned ~ ~ ~ run function lib:glowing_ghost_block
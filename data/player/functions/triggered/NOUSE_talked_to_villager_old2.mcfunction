#execute幾何学方式 視線上全探索
# 結果: 無駄に重いくせに近くの村人に反応してしまう。

me talked to villager.
tag @s add talking

execute anchored eyes positioned ^ ^ ^ anchored feet run function system:helper/summon_helper1

execute anchored eyes positioned ^ ^ ^10 anchored feet run function system:helper/summon_helper2

function system:helper/facing_each_other

execute anchored eyes positioned ^ ^ ^4.1 anchored feet rotated as @e[tag=helper,sort=nearest] positioned ^ ^ ^2 rotated as @e[tag=helper,sort=nearest] positioned ^ ^ ^1 rotated as @e[tag=helper,sort=nearest] positioned ^ ^ ^0.5 run tag @e[type=villager,dx=0,dy=1,dz=0] add processing

function system:helper/kill


# execute positioned ^ ^ ^4.1 run tag @e[type=villager,distance=..4] add processing
# execute as @e[tag=processing,sort=nearest,limit=1] at @s run function lib:glowing_ghost_block
execute as @e[tag=processing] at @s run function lib:glowing_ghost_block
tag @e[tag=processing] remove processing
tag @s remove talking
scoreboard players reset @s talk


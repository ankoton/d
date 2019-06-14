

execute store result score $x global run data get entity @s Brain.memories.minecraft:job_site.pos[0]
execute store result score $y global run data get entity @s Brain.memories.minecraft:job_site.pos[1]
execute store result score $z global run data get entity @s Brain.memories.minecraft:job_site.pos[2]

tellraw @a ["(",{"score":{"objective":"global","name":"$x"}},", ",{"score":{"objective":"global","name":"$y"}},", ",{"score":{"objective":"global","name":"$z"}},")"]


tp @e[tag=line_helper_A,limit=1] @s
execute as @e[tag=line_helper_B,limit=1] run function lib:position/restore

# 向き初期化
execute as @e[tag=line_helper,limit=2] at @s facing entity @e[tag=line_helper,sort=furthest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 32分割表示
execute as @e[tag=line_helper_A,limit=1] at @s rotated as @s positioned ^2048 ^ ^ facing entity @e[tag=line_helper_B,limit=1] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force

execute at @e[tag=line_helper_B,limit=1] run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:glass"},NoGravity:1b,Glowing:1b,Time:500,DropItem:0b}
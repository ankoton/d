
# chunk_corner 初期化
tp @e[tag=chunk_corner,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=chunk_corner,limit=1] store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute as @e[tag=chunk_corner,limit=1] store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625

execute at @e[tag=chunk_corner,limit=1] positioned ~8 ~ ~8 rotated as @e[tag=direction_xz] positioned ^4 ^ ^4 rotated as @e[tag=direction_xz] positioned ^2 ^ ^2 rotated as @e[tag=direction_xz] positioned ^1 ^ ^1 rotated as @e[tag=direction_xz] positioned ^0.5 ^ ^0.5 run particle minecraft:heart ~ ~ ~ 0 0 0 0 1 force

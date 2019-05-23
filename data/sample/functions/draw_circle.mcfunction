# パーティクルで円を描く
# 前提: execute as <中心エンティティ> at @s rotated as @s

# 位置初期化
tp @e[tag=circle_helper_A,limit=1] ^ ^ ^1 ~ ~
tp @e[tag=circle_helper_B,limit=1] ^ ^ ^-1 ~ ~

# 向き初期化
execute as @e[tag=circle_helper] at @s facing entity @e[tag=circle_helper,sort=furthest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 128分割
execute rotated as @e[tag=circle_helper] rotated ~90 0 positioned ^ ^ ^1 rotated as @e[tag=circle_helper] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=circle_helper] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=circle_helper] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=circle_helper] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=circle_helper] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^1 rotated as @e[tag=circle_helper] positioned ^ ^ ^1 facing entity @s feet positioned as @s positioned ^ ^ ^5 run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force


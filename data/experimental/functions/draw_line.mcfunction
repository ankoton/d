# パーティクルで線を描く
# 前提: execute as <エンティティ> at @s rotated as @s

# 位置初期化
tp @e[tag=line_helper_A,limit=1] ^ ^ ^ ~ ~
tp @e[tag=line_helper_B,limit=1] ^ ^ ^10 ~ ~

# 向き初期化
execute as @e[tag=line_helper,limit=2] at @s facing entity @e[tag=line_helper,sort=furthest,limit=1] feet run tp @s ~ ~ ~ ~ ~



# 128分割
execute positioned ^2048 ^ ^ facing entity @e[tag=line_helper_B,limit=1] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^ run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force


#execute positioned ^2048 ^ ^ facing entity @e[tag=line_helper_B,limit=1] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# positioned ^2048 ^ ^ facing entity @e[tag=line_helper,limit=2] feet positioned ^ ^ ^1024 rotated as @s positioned ^-1024 ^ ^
# run particle minecraft:composter ~ ~ ~ 0 0 0 0 1 force

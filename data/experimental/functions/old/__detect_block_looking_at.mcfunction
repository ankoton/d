
# プレイヤーから離れすぎると自殺（無限再帰防止）
execute as @e[type=armor_stand,tag=looking_at_helper] at @s rotated as @s unless entity @a[distance=..10] run kill @s

# 見つかったら"looking_at アマスタ"を召喚
execute as @e[type=armor_stand,tag=looking_at_helper] at @s rotated as @s unless block ~ ~ ~ minecraft:air align xyz run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["looking_at","garbage"]}

# ブロックを発見したら自殺して終了（無限再帰防止）
execute as @e[type=armor_stand,tag=looking_at_helper] at @s rotated as @s unless block ~ ~ ~ minecraft:air run kill @s

# 移動（移動幅を狭めることで精度が上がる）（その分重くなる可能性）
execute as @e[type=armor_stand,tag=looking_at_helper] at @s rotated as @s if block ~ ~ ~ minecraft:air run tp ^ ^ ^0.1

# テレポート前の座標を調べて再帰
#execute as @e[type=armor_stand,tag=looking_at_helper] at @s rotated as @s positioned ^ ^ ^-0.1 if block ~ ~ ~ minecraft:air run function utility:__detect_block_looking_at

# ↑調べる必要性なくない？？
#   looking_at_helperが生きている=まだ処理が継続しているだから生存checkだけでいいかと
execute as @e[type=armor_stand,tag=looking_at_helper] at @s rotated as @s run function utility:__detect_block_looking_at

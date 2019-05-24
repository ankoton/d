
# デクリメント
scoreboard players remove @s loop_i 1

# 見つかったとき
# 光るガラスでも召喚しとく
execute unless block ~ ~ ~ minecraft:air align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:glass"},NoGravity:1b,Glowing:1b,Time:500,DropItem:0b}


# 見つかったら変数を破棄する
# 実質break
execute unless block ~ ~ ~ minecraft:air run scoreboard players reset @s loop_i

# 残りループ回数が1以上なら0.1ブロック進めて再帰
execute if entity @s[scores={loop_i=1..}] positioned ^ ^ ^0.1 run function utility:__find_the_block_looking_at

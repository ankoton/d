
# looking at の座標を検出するテスト
#
# 実行者: プレイヤー

# ループ回数を50に設定
scoreboard players set @s loop_i 50

# プレイヤーの目の位置から
# メイン処理呼び出し
execute as @s at @s rotated as @s anchored eyes positioned ^ ^ ^ anchored feet run function utility:__find_the_block_looking_at


# scoreが残っていれば見つかっていない
#execute if score @s loop_i = @s loop_i run tellraw @s [{"text":"ブロックの検知に失敗しました","color":"red"}]
execute if entity @s[scores={loop_i=0}] run tellraw @s [{"text":"ブロックの検知に失敗しました","color":"red"}]


# initialize
scoreboard players reset @s loop_i
#execute if score @s loop_i = @s loop_i run scoreboard players reset @s loop_i

# repeating
# 前提: execute as <Player>


# スニークを解除したらsneakingをリセット
execute unless entity @s[scores={sneak_time=1..}] if entity @s[scores={sneaking=1..}] run scoreboard players reset @s sneaking

# スニーク中ならsneakingをインクリメント
execute if entity @s[scores={sneak_time=1..}] run scoreboard players add @s sneaking 1


# initialize
# ここ以外でsneak_timeを変更しない！！！！
scoreboard players reset @s sneak_time

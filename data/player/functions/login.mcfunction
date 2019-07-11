# ログアウト -> ログイン 時処理
# 前提: execute as @a[scores={leave_game=1..}]

# スキル表示
# ログイン時に死んでいた場合は表示しない
execute if entity @s[scores={age=1..}] run function player:skill/show

# initialize
scoreboard players reset @s leave_game

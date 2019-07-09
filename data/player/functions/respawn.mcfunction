################################
# プレイヤーリスポーン
################################

# 前提: execute as @a[scores={death=1..,age=1..}]


# Tips表示
function text:tips/show

# initialize
scoreboard players reset @s death

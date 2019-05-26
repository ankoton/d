# ブロックに憑依するカスタムスポナーの処理
# 前提: execute as @e[tag=spawner_possess_block] at @s


# 位置調整
execute align xyz run tp @s ~0.5 ~ ~0.5

# スポナーの動作
execute positioned ~ ~0.5 ~ run function entity:spawner/tick

# ブロックが無い場合自害
execute if block ~ ~ ~ minecraft:air run kill @s


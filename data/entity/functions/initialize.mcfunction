# エンティティ初期化
# 前提: execute as @e[tag=!initialized]

# カスタムスポナー
execute if entity @s[tag=spawner] run function spawner:initialize

#tag @s add initialized

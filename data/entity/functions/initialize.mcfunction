# エンティティ初期化
# 前提: execute as @e[tag=!initialized]

# プレイヤー
execute if entity @s[type=player] run function entity:player/initialize

# カスタムスポナー
execute if entity @s[tag=spawner] run function entity:spawner/initialize

#tag @s add initialized

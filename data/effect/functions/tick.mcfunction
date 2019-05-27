################################
# カスタムエフェクト進行処理
################################
# 前提: execute as @a


# 死の宣告進行
execute if entity @s[scores={doom=0..}] run function effect:doom/tick



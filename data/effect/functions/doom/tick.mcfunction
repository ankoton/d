# repeating
# 前提: execute as @a[scores={doom=0..}]

################################
# 死の宣告 進行
################################

execute if entity @s[scores={doom=0}] run function effect:doom/tick_60

execute if entity @s[scores={doom=1..}] run scoreboard players remove @s doom 1

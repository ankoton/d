# repeating
# 前提: execute as @a[scores={doom=0}]

################################
# 死の宣告 進行
################################

# display
tellraw @s ["",{"score":{"name":"@s","objective":"doom_d"},"color":"dark_red"}]

# n:0 = (n-1):60
scoreboard players remove @s doom_d 1
scoreboard players set @s doom 60

# kill
execute if entity @s[scores={doom_d=-1}] run function effect:doom/kill

# repeating

################################
# 死の宣告 進行
################################


# display
execute if entity @s[scores={doom=0}] run tellraw @s ["",{"score":{"name":"@s","objective":"doom_d"},"color":"dark_red"}]

# kill
execute if entity @s[scores={doom=0,doom_d=0}] run function effect:doom/kill

# n:0 = (n-1):60
execute if entity @s[scores={doom=0}] run scoreboard players remove @s doom_d 1
execute if entity @s[scores={doom=0}] run scoreboard players set @s doom 60

# count
execute if entity @s[scores={doom=1..}] run scoreboard players remove @s doom 1

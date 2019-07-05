################################
# 死の宣告 進行
################################

# require:
#  execute as @a[scores={doom=0..}] run function <this>

# calculate
scoreboard players operation $doom_remainder doom = @s doom
scoreboard players operation $doom_remainder doom %= $60 const

# display
execute if score $doom_remainder doom matches 0 run function effect:doom/tick_60

# kill
execute if entity @s[scores={doom=0}] run function effect:doom/kill

# count down
execute if entity @s[scores={doom=1..}] run scoreboard players remove @s doom 1

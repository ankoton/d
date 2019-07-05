
# require:
#  execute as @a[scores={doom=60n}] (n = 0, 1, 2, ...) run function <this>


# calculate
scoreboard players operation $doom_display doom = @s doom
scoreboard players operation $doom_display doom /= $60 const

# display
tellraw @s ["",{"score":{"name":"$doom_display","objective":"doom"},"color":"dark_red"}]

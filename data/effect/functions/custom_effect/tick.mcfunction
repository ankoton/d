# tick custom effect

# require:
#  execute as @a run function <this>


# doom
execute if entity @s[scores={doom=0..}] run function effect:doom/tick


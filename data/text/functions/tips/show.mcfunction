# generate a random tips and show it

# require:
#  execute as <player> run function <this>

execute as @e[tag=text_holder,limit=1] run function text:tips/generate

tellraw @s ["",{"text":"[Tips] ","color":"white","bold":"true","italic":"false"},{"selector":"@e[tag=text_holder,limit=1]"}]


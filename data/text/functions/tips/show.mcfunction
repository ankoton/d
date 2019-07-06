# generate a random tips and show it

# require:
#  execute as <player> run function <this>

# get text from loot_table
loot replace entity 0-0-0-0-10 weapon.mainhand loot text:tips

tellraw @s ["",{"text":"[Tips] ","color":"white","bold":"true","italic":"false"},{"nbt":"HandItems[0].tag.tips","entity":"0-0-0-0-10"}]

# delete item
data remove entity 0-0-0-0-10 HandItems[0]

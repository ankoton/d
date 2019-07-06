# 前提: execute as <text_holder>

# get text from loot_table
loot replace entity @s weapon.mainhand loot text:tips

# store text to CustomName
data modify entity @s CustomName set from entity @s HandItems[0].tag.tips

# delete item
data remove entity @s HandItems[0]

# アイテム退避
data modify entity @e[tag=slot-saver,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]

# 装備書き換え
loot replace entity @s armor.head loot item:system/knockback_resistance_1

# hack
data modify entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"generic.knockbackResistance"}].Amount set value 0b

# 消す
replaceitem entity @s armor.head minecraft:air

# effectだと1tick後にkillされるっぽくてうまくいかない（でも/kill だと不死のトーテムで耐えられないしなぁ。）

gamerule showDeathMessages false
effect give @s minecraft:instant_damage 1 10 true
execute if entity @s[nbt={Health:0.0f}] run tellraw @a [{"selector":"@s"}," は闇の力に溺れた"]
gamerule showDeathMessages true

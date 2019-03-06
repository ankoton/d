# repeating
# 
# execute as @a[tag=force_hp_1]


# 1
execute if entity @s[scores={health=2}] run effect give @s minecraft:poison 1 1 true

# 5以上 4ダメージ
execute if entity @s[scores={health=5..}] run effect give @s minecraft:instant_damage 1 0 true

execute if entity @s[scores={health=..4}] run tag @s remove force_hp_1

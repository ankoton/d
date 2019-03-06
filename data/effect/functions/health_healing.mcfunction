# repeating
# 
# execute as @a[scores={health_healing=0..}]

# カスタムHP回復

# 4以上
execute if entity @s[scores={health_healing=4..}] run effect give @s minecraft:instant_health 1 0 true

# 3
execute if entity @s[scores={health_healing=3}] run effect give @s minecraft:regeneration 2 2 true

# 2
execute if entity @s[scores={health_healing=2}] run effect give @s minecraft:regeneration 3 1 true

# 1
execute if entity @s[scores={health_healing=1}] run effect give @s minecraft:regeneration 3 0 true

scoreboard players remove @s health_healing 4

execute if entity @s[scores={health_healing=..0}] run scoreboard players reset @s health_healing

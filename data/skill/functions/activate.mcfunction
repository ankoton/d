# repeating
# 前提: execute as @a at @s rotated as @s

# --------------------------------
# activate skill
# --------------------------------

# rod skill
execute if entity @s[scores={use_carrot_stick=1..}] run function skill:rod/activate


# --------------------------------
# initialize
# --------------------------------
scoreboard players reset @s use_carrot_stick

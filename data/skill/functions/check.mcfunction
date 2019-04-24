# repeating

# --------------------------------
# detect and run skill
# --------------------------------

# change rod skill mode
execute as @a[scores={q_carrot_stick=1..}] at @s rotated as @s run function skill:change_rod_skill_mode

# rod skill
execute as @a[scores={use_carrot_stick=1..}] at @s rotated as @s run function skill:rod_skill


# --------------------------------
# initialize
# --------------------------------
scoreboard players reset @a[scores={q_carrot_stick=1..}] q_carrot_stick

scoreboard players reset @a[scores={use_carrot_stick=1..}] use_carrot_stick
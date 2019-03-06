# repeating

# detect skill trigger and run skill


# change rod skill mode
execute as @a[scores={q_carrot_stick=1..}] at @s rotated as @s run function skill:change_rod_skill_mode

# rod skill
execute as @a[scores={use_carrot_stick=1..}] at @s rotated as @s run function skill:rod_skill


# repeating

# detect skill trigger and run skill




# run
execute as @a[scores={use_carrot_stick=1..}] at @s rotated as @s run function skill:fill


# initialize
execute as @a[scores={use_carrot_stick=1..}] run scoreboard players reset @s use_carrot_stick

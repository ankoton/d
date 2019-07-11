
# require:
#  execute as @a[scores={use_carrot_stick=1..}] at @s run function <this>

# skill
function player:skill/activate/rod

# initialize
scoreboard players reset @s use_carrot_stick

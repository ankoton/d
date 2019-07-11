
# require:
#  execute as @a[scores={set_skill_id=1..}] run function <this>

scoreboard players operation @s rod_skill = @s set_skill_id

function player:skill/show/rod

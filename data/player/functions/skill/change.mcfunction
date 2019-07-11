
# require:
#  execute as @a[scores={change_skill=1..}] run function <this>


execute if entity @s[scores={change_skill=1}] run function player:skill/change/rod


# sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

# enable trigger
scoreboard players enable @s set_skill_id

# initialize
scoreboard players reset @s change_skill
scoreboard players enable @s change_skill

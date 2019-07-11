
# require:
#  execute as @a[scores={set_skill_id=1..}] run function <this>

# rod skill
execute if entity @s[scores={set_skill_id=10000..19999}] run function player:skill/set/rod


# sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1

# enable trigger
scoreboard players enable @s change_skill

# initialize
scoreboard players reset @s set_skill_id

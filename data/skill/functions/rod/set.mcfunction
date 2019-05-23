# 前提: execute as @a[scores={change_skill=0..}] at @s

scoreboard players operation @s rod_skill = @s set_rod_skill

scoreboard players reset @s set_rod_skill

function skill:rod/show

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1


# 前提: execute as @a at @s


# スキル一覧表示
execute if entity @s[scores={change_skill=1}] run function skill:rod/show_list


# スキルセット
execute if entity @s[scores={set_rod_skill=1..}] run function skill:rod/set



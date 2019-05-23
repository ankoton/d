# 前提: execute as <スキルを変更するプレイヤー> at @s

scoreboard players reset @s change_skill
scoreboard players enable @s change_skill
scoreboard players enable @s set_rod_skill

tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger set_rod_skill set 10000"}}," ",{"text":"フィール","hoverEvent":{"action":"show_text","value":{"text":"足元に羊毛の足場を召喚します","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger set_rod_skill set 10100"}}," ",{"text":"Adv.フィール","hoverEvent":{"action":"show_text","value":{"text":"足元に羊毛の足場を召喚します","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger set_rod_skill set 10101"}}]

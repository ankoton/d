

scoreboard players enable @s set_skill_id

tellraw @s ["",{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger set_skill_id set 10000"}}," ",{"text":"フィール","hoverEvent":{"action":"show_text","value":{"text":"足元に羊毛の足場を召喚します","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger set_skill_id set 10100"}}," ",{"text":"Adv.フィール","hoverEvent":{"action":"show_text","value":{"text":"足元に羊毛の足場を召喚します","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger set_skill_id set 10101"}}," ",{"text":"ケアル","hoverEvent":{"action":"show_text","value":{"text":"HPを少し回復します","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger set_skill_id set 10200"}}]

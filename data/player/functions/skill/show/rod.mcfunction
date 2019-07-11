
# require:
#  execute as @a run function <this>


tellraw @s[scores={rod_skill=10000}] ["",{"text":"未設定","color":"light_purple"},"   ",{"text":"→変更！","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger change_skill set 1"}}]

tellraw @s[scores={rod_skill=10100}] ["",{"text":"フィール","color":"light_purple"},"   ",{"text":"→変更！","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger change_skill set 1"}}]

tellraw @s[scores={rod_skill=10101}] ["",{"text":"Adv.フィール","color":"light_purple"},"   ",{"text":"→変更！","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger change_skill set 1"}}]

tellraw @s[scores={rod_skill=10200}] ["",{"text":"ケアル","color":"light_purple"},"   ",{"text":"→変更！","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger change_skill set 1"}}]


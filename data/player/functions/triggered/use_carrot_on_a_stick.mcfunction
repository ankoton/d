me used carrot on a stick.
# tellraw @s {"nbt":"_.SelectedItem","storage":"player:current"}
# execute store result score @s local run data get storage player:current _.SelectedItem.tag.skill_id
## 前tickの情報を参照してると高速でアイテムを切り替えながらスキルを発動したときに判定に失敗するので暫定的に現在のtickのアイテムを参照
execute store result score @s local run data get entity @s SelectedItem.tag.skill_id
execute unless entity @s[scores={local=1..}] run function skill:null
execute if entity @s[scores={local=1}] run function skill:fill
execute if entity @s[scores={local=3}] run function skill:cure
scoreboard players reset @s use_rod
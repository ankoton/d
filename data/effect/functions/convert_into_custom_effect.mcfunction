# repeating
# 前提: execute as <player>

# 透明化Lv取得
execute store result score @s effect_id run data get entity @s ActiveEffects[{Id:14b}].Amplifier

# tag付与
execute if @s[scores={effect_id=3}] run tag @s add doom
execute if @s[scores={effect_id=7}] run tag @s add doom_escape

# 透明化Lv2以上は解除
execute if @s[scores={effect_id=1..}] run effect clear @s minecraft:invisibility

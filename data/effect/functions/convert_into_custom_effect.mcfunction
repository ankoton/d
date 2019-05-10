# repeating
# 前提: execute as <player>

# 透明化Lv取得
execute as @a store result score @s effect_id run data get entity @s ActiveEffects[{Id:14b}].Amplifier

# tag付与
tag @a[scores={effect_id=3}] add doom
tag @a[scores={effect_id=7}] add doom_escape

# 透明化Lv2以上は解除
effect clear @a[scores={effect_id=1..}] minecraft:invisibility

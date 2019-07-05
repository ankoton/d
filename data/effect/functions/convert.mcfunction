# 透明化エフェクトをカスタムエフェクトに変換

# require:
#  execute as <player>


# 透明化Lv取得
execute store result score @s effect_id run data get entity @s ActiveEffects[{Id:14b}].Amplifier


# 透明化 -> tag変換
execute if entity @s[scores={effect_id=3}] run tag @s add doom
execute if entity @s[scores={effect_id=7,doom=0..}] run tag @s add doom_escape


# 透明化Lv2以上は解除
execute if entity @s[scores={effect_id=1..}] run effect clear @s minecraft:invisibility


# tag -> 特殊効果変換
execute if entity @s[tag=doom] run function effect:doom/give
execute if entity @s[tag=doom_escape] run function effect:doom/escape

################################
# 死の宣告 から逃れた！
################################

execute if entity @s[scores={doom=0..}] run tellraw @a ["* ",{"selector":"@s"}," は",{"text":"死の宣告","color":"dark_red","hoverEvent":{"action":"show_text","value":"カウントが0になると死亡する"}},"から",{"text":"逃れた","color":"green"},"！"]

# initialize
scoreboard players reset @s doom_d
scoreboard players reset @s doom
tag @s remove doom_escape


################################
# 死の宣告 から逃れた！
################################

# initialize
scoreboard players reset @s doom_d
scoreboard players reset @s doom
tag @s remove doom
tag @s remove doom_escape

tellraw @a ["* ",{"selector":"@s"}," は",{"text":"死の宣告","color":"dark_red","hoverEvent":{"action":"show_text","value":"カウントが0になると死亡する"}},"から",{"text":"逃れた","color":"green"},"！"]

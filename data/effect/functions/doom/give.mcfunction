
################################
# 死の宣告 付与
################################

# doom_d カウント後に死ぬ
# 60 = 1カウントのtick数 = 3秒
# (doom_d * 60 + doom) [tick] 後に死ぬ

scoreboard players set @s doom_d 10
scoreboard players set @s doom 0

tellraw @a ["* ",{"selector":"@s"}," は",{"text":"死の宣告","color":"dark_red","hoverEvent":{"action":"show_text","value":"カウントが0になると死亡する"}},"を受けた！"]

tag @s remove doom

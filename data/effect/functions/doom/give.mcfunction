################################
# 死の宣告 付与
################################

# doom [tick] 後に死ぬ
# 1[カウント] = 60[tick] = 3[秒]

scoreboard players set @s doom 600

tellraw @a ["* ",{"selector":"@s"}," は",{"text":"死の宣告","color":"dark_red","hoverEvent":{"action":"show_text","value":"カウントが0になると死亡する"}},"を受けた！"]

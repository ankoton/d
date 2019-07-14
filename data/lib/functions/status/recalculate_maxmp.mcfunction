# Recalculate max_mp from level

# コマンド数的に重いので計算が狂ったときだけ使う.

# require:
#  scoreboard objectives add max_mp dummy
#  scoreboard objectives add level dummy
#  scoreboard objectives add const dummy
#  scoreboard players set $2 const 2
#  execute as @a run function <this>

# max_mp = level == 0 ? 0 : level * (level - 1) / 2 + 100

scoreboard players operation @s max_mp = @s level
scoreboard players remove @s max_mp 1
scoreboard players operation @s max_mp *= @s level
scoreboard players operation @s max_mp /= $2 const
scoreboard players add @s max_mp 100
execute unless entity @s[scores={level=1..}] run scoreboard players reset @s max_mp
execute unless entity @s[scores={level=1..}] run scoreboard players reset @s level

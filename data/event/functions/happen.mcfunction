# 嫌な予感イベント 発生
# 前提: execute as @a[scores={event_id=0..}]

# switch id
execute if entity @s[scores={event_id=0}] run function event:iyanayokan/none

# initialize
scoreboard players reset @s event_id

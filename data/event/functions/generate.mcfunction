# 前提: execute as <player>

# 演出
me 「嫌な予感がする……！」

# generate event id
function lib:random/update
scoreboard players operation @s event_id = $random global
scoreboard players operation @s event_id %= $event_num const

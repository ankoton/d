
execute if score $event_timer global matches 0 run function event:start
execute if score $event_lag global matches 0 run function event:finish
scoreboard players remove $event_timer global 1
execute if score $event_lag global matches 0.. run scoreboard players remove $event_lag global 1

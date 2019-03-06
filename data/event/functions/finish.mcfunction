
# 演出終了
worldborder warning distance 0

# foreach main
execute as @a[gamemode=!creative,gamemode=!spectator] at @s rotated as @s run function event:generate

# initialize
scoreboard players set $event_timer global 72000
scoreboard players reset $event_lag global

execute as @a[gamemode=!creative,gamemode=!spectator] run me 「嫌な予感がする……！」
execute as @a at @s run playsound minecraft:block.portal.travel master @s ~ ~100 ~ 10 0.5 1
#worldborder warning distance 10000000
worldborder warning distance 2147483647
scoreboard players remove $event_timer global 1
scoreboard players set $event_lag global 200

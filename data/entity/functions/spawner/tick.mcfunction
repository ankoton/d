# 前提: execute as @e[tag=spawner] at @s rotated as @s if entity @a[distance=..16,gamemode=!spectator]


particle minecraft:flame ~ ~1.7 ~ 0.3 0.3 0.3 0 1 normal

execute if entity @s[scores={spawn_delay=1..}] run scoreboard players remove @s spawn_delay 1

execute if entity @s[scores={spawn_delay=0}] run function entity:spawner/spawn


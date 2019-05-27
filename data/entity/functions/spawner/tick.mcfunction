# コマンドゴリ押し式カスタムスポナー tick
# 前提: execute as @e[tag=spawner] at @s positioned <スポナーの中心> if entity @a[distance=..32,gamemode=!spectator]

# 本物を模倣
particle minecraft:flame ~ ~ ~ 0.25 0.25 0.25 0 1 normal

# spawn
execute if entity @s[scores={spawn_delay=0}] run function entity:spawner/spawn

# count
execute if entity @s[scores={spawn_delay=1..}] run scoreboard players remove @s spawn_delay 1


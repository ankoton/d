# カスタムスポナー 初期化
# 前提: execute as @e[tag=spawner]

execute store result score @s spawn_delay run data get entity @s ArmorItems[3].tag.BlockEntityTag.Delay
execute store result score @s min_spawn_delay run data get entity @s ArmorItems[3].tag.BlockEntityTag.MinSpawnDelay
execute store result score @s d_spawn_delay run data get entity @s ArmorItems[3].tag.BlockEntityTag.MaxSpawnDelay
scoreboard players operation @s d_spawn_delay -= @s min_spawn_delay


tag @s add initialized

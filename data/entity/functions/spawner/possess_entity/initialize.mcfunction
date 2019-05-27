# エンティティに憑依するカスタムスポナー　初期化
# 前提: execute as @e[tag=spawner_possess_entity]

# initialize scoreboard
scoreboard players set @s spawn_delay 20
scoreboard players set @s min_spawn_delay 200
scoreboard players set @s d_spawn_delay 600
#scoreboard players operation @s d_spawn_delay -= @s min_spawn_delay


tag @s add initialized

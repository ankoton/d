# store nbt of player

## require:
##   execute as @a run <this>

execute if entity @s[scores={player_id=1}] run function storage:player/store_nbt/impl.1
execute if entity @s[scores={player_id=2}] run function storage:player/store_nbt/impl.2
execute if entity @s[scores={player_id=3}] run function storage:player/store_nbt/impl.3
execute if entity @s[scores={player_id=4}] run function storage:player/store_nbt/impl.4
# ブロックに憑依するカスタムスポナー　初期化
# 前提: execute as @e[tag=spawner_possess_block]

data merge entity @s {Marker:0b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Pose:{Head:[180f,0f,0f]},CustomName:"{\"text\":\"擬態スポナー\"}"}
#data merge entity @s {Marker:0b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{}}],Pose:{Head:[180f,0f,0f]},CustomName:"{\"text\":\"擬態スポナー\"}"}

# スポナーを装備していない場合は装備
execute unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:spawner"}]}] run data modify entity @s ArmorItems[3] set value {id:"minecraft:spawner",Count:1b,tag:{BlockEntityTag:{Delay:20s,MinSpawnDelay:200s,MaxSpawnDelay:800s}}}

# initialize scoreboard
execute store result score @s spawn_delay run data get entity @s ArmorItems[3].tag.BlockEntityTag.Delay
execute store result score @s min_spawn_delay run data get entity @s ArmorItems[3].tag.BlockEntityTag.MinSpawnDelay
execute store result score @s d_spawn_delay run data get entity @s ArmorItems[3].tag.BlockEntityTag.MaxSpawnDelay
scoreboard players operation @s d_spawn_delay -= @s min_spawn_delay


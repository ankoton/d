################################
# summon system entity
################################

# require:
#  execute as [Server] run function <this>

# AECはdistance=0に引っかからないので注意
# [distance=..0.01]とかならひっかかる

# delete old system entity
kill @e[tag=system]

# System
# UUID:0-0-0-0-0
summon area_effect_cloud ~ ~ ~ {Tags:["system","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:0l,CustomName:"{\"text\":\"Server\"}"}


# execute helper
# UUID:0-0-0-0-1
summon area_effect_cloud ~ ~ ~ {Tags:["system","helper","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:1l,CustomName:"{\"text\":\"execute helper A\"}"}

# UUID:0-0-0-0-2
summon area_effect_cloud ~ ~ ~ {Tags:["system","helper","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:2l,CustomName:"{\"text\":\"execute helper B\"}"}


# text_holder
# UUID:0-0-0-0-10
summon armor_stand ~ ~ ~ {Tags:["system","text_holder","initialized"],Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{}}],UUIDMost:0l,UUIDLeast:16l,CustomName:"{\"text\":\"text_holder\"}"}


# direction
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_south","direction_z","direction_xz","direction_xyz","initialized"],Rotation:[0.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"direction_south\"}"}

summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_east","direction_x","direction_xz","direction_xyz","initialized"],Rotation:[-90.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"direction_east\"}"}

summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_north","direction_z","direction_xz","direction_xyz","initialized"],Rotation:[-180.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"direction_north\"}"}

summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_west","direction_x","direction_xz","direction_xyz","initialized"],Rotation:[90.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"direction_west\"}"}

summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_up","direction_y","direction_xyz","initialized"],Rotation:[0.0f,-90.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"direction_up\"}"}

summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_down","direction_y","direction_xyz","initialized"],Rotation:[0.0f,90.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"direction_down\"}"}


# coordinate
# UUID:0-0-0-0-20
summon area_effect_cloud ~ ~ ~ {Tags:["system","coordinate","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:32l,CustomName:"{\"text\":\"coordinate\"}"}


# chunk_corner
summon area_effect_cloud ~ ~ ~ {Tags:["system","chunk_corner","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"chunk_corner\"}"}




# target
#summon area_effect_cloud ~ ~ ~ {Tags:["system","target","initialized"],CustomName:"{\"text\":\"target\"}"}


# common nbt
#execute as @e[tag=system,type=minecraft:armor_stand] run data merge entity @s {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{}}]}
#execute as @e[tag=system,type=minecraft:area_effect_cloud] run data merge entity @s {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air"}

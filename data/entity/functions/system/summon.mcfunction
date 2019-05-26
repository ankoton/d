################################
# summon system entity
################################
# 前提: Serverとして実行
# AECはdistance=0に引っかからないので注意
# [distance=..0.01]とかならひっかかる

# delete old system entity
kill @e[tag=system]


# text_holder
summon armor_stand ~ ~ ~ {Tags:["system","text_holder","initialized"],CustomName:"{\"text\":\"text_holder\"}"}

# direction
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_east","direction_x","direction_xz","direction_xyz","initialized"],Rotation:[-90.0f,0.0f],CustomName:"{\"text\":\"direction_east\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_west","direction_x","direction_xz","direction_xyz","initialized"],Rotation:[90.0f,0.0f],CustomName:"{\"text\":\"direction_west\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_south","direction_z","direction_xz","direction_xyz","initialized"],Rotation:[0.0f,0.0f],CustomName:"{\"text\":\"direction_south\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_north","direction_z","direction_xz","direction_xyz","initialized"],Rotation:[-180.0f,0.0f],CustomName:"{\"text\":\"direction_north\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_up","direction_y","direction_xyz","initialized"],Rotation:[0.0f,-90.0f],CustomName:"{\"text\":\"direction_up\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_down","direction_y","direction_xyz","initialized"],Rotation:[0.0f,90.0f],CustomName:"{\"text\":\"direction_down\"}"}

# line_helper
summon area_effect_cloud ~ ~ ~ {Tags:["system","line_helper_A","line_helper","initialized"],CustomName:"{\"text\":\"line_helper_A\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","line_helper_B","line_helper","initialized"],CustomName:"{\"text\":\"line_helper_B\"}"}

# circle_helper
summon area_effect_cloud ~ ~ ~ {Tags:["system","circle_helper_A","circle_helper","initialized"],CustomName:"{\"text\":\"circle_helper_A\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","circle_helper_B","circle_helper","initialized"],CustomName:"{\"text\":\"circle_helper_B\"}"}

# chunk_corner
summon area_effect_cloud ~ ~ ~ {Tags:["system","chunk_corner","initialized"],CustomName:"{\"text\":\"chunk_corner\"}"}

# coordinate
summon area_effect_cloud ~ ~ ~ {Tags:["system","coordinate","initialized"],CustomName:"{\"text\":\"coordinate\"}"}


# target
summon area_effect_cloud ~ ~ ~ {Tags:["system","target","initialized"],CustomName:"{\"text\":\"target\"}"}


# common nbt
execute as @e[tag=system,type=minecraft:armor_stand] run data merge entity @s {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{}}]}
execute as @e[tag=system,type=minecraft:area_effect_cloud] run data merge entity @s {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air"}


# system entity 初期化
# AECはdistance=0に引っかからないので注意
# [distance=..0.01]とかならひっかかる

# text_holder
summon armor_stand ~ ~ ~ {Tags:["system","text_holder"],CustomName:"{\"text\":\"text_holder\"}"}

# direction
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_east","direction_x","direction_xz","direction_xyz"],CustomName:"{\"text\":\"direction_east\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_west","direction_x","direction_xz","direction_xyz"],CustomName:"{\"text\":\"direction_west\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_south","direction_z","direction_xz","direction_xyz"],CustomName:"{\"text\":\"direction_south\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","direction_north","direction_z","direction_xz","direction_xyz"],CustomName:"{\"text\":\"direction_north\"}"}

# line_helper
summon area_effect_cloud ~ ~ ~ {Tags:["system","line_helper_A","line_helper"],CustomName:"{\"text\":\"line_helper_A\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","line_helper_B","line_helper"],CustomName:"{\"text\":\"line_helper_B\"}"}

# circle_helper
summon area_effect_cloud ~ ~ ~ {Tags:["system","circle_helper_A","circle_helper"],CustomName:"{\"text\":\"circle_helper_A\"}"}
summon area_effect_cloud ~ ~ ~ {Tags:["system","circle_helper_B","circle_helper"],CustomName:"{\"text\":\"circle_helper_B\"}"}

# chunk_corner
summon area_effect_cloud ~ ~ ~ {Tags:["system","chunk_corner"],CustomName:"{\"text\":\"chunk_corner\"}"}

# coordinate
summon area_effect_cloud ~ ~ ~ {Tags:["system","coordinate"],CustomName:"{\"text\":\"coordinate\"}"}


# target
summon area_effect_cloud ~ ~ ~ {Tags:["system","target"],CustomName:"{\"text\":\"target\"}"}


# common nbt
execute as @e[tag=system,type=minecraft:armor_stand] run data merge entity @s {Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true,ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{}}]}
execute as @e[tag=system,type=minecraft:area_effect_cloud] run data merge entity @s {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air"}

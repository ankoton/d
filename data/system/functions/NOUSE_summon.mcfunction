################################
# summon system entity
################################

# require:
#  execute as [Server] run function <this>

# AECはdistance=0に引っかからないので注意
# [distance=..0.01]とかならひっかかる

execute unless entity 0-0-0-0-0 run say baka
# execute unless entity 0-0-0-0-1 run say aho

# System
execute unless entity 0-0-0-0-0 run summon area_effect_cloud ~ ~ ~ {Tags:["system","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:0l,CustomName:"{\"text\":\"system\"}"}


# execute_helper
# execute unless entity 0-0-0-0-1 run summon area_effect_cloud ~ ~ ~ {Tags:[system,helper,initialized,helper1],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:1l,CustomName:"{\"text\":\"helper 1\"}"}

# execute unless entity 0-0-0-0-2 run summon area_effect_cloud ~ ~ ~ {Tags:["system","helper","initialized",helper2],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:2l,CustomName:"{\"text\":\"helper 2\"}"}


# text_holder
# execute unless entity 0-0-0-0-10 run summon armor_stand ~ ~ ~ {Tags:["system","text_holder","initialized"],Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:tnt",Count:1b,tag:{}}],UUIDMost:0l,UUIDLeast:16l,CustomName:"{\"text\":\"text_holder\"}"}


# coordinate_holder
# execute unless entity 0-0-0-0-cafe run summon area_effect_cloud ~ ~ ~ {Tags:["system","coordinate_holder","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:51966l,CustomName:"{\"text\":\"coordinate_holder\"}"}


# rotation_holder
# execute unless entity 0-0-0-0-face run summon area_effect_cloud ~ ~ ~ {Tags:["system","rotation_holder","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:0l,UUIDLeast:64206l,CustomName:"{\"text\":\"rotation_holder\"}"}


# direction
execute unless entity @e[tag=facing_south] run summon area_effect_cloud ~ ~ ~ {Tags:["system","facing_south","z_axis","xz_axis","xyz_axis","initialized"],Rotation:[0.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"facing_south\"}"}

execute unless entity @e[tag=facing_east] run summon area_effect_cloud ~ ~ ~ {Tags:["system","facing_east","x_axis","xz_axis","xyz_axis","initialized"],Rotation:[-90.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"facing_east\"}"}

execute unless entity @e[tag=facing_north] run summon area_effect_cloud ~ ~ ~ {Tags:["system","facing_north","z_axis","xz_axis","xyz_axis","initialized"],Rotation:[-180.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"facing_north\"}"}

execute unless entity @e[tag=facing_west] run summon area_effect_cloud ~ ~ ~ {Tags:["system","facing_west","x_axis","xz_axis","xyz_axis","initialized"],Rotation:[90.0f,0.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"facing_west\"}"}

execute unless entity @e[tag=facing_up] run summon area_effect_cloud ~ ~ ~ {Tags:["system","facing_up","y_axis","xyz_axis","initialized"],Rotation:[0.0f,-90.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"facing_up\"}"}

execute unless entity @e[tag=facing_down] run summon area_effect_cloud ~ ~ ~ {Tags:["system","facing_down","y_axis","xyz_axis","initialized"],Rotation:[0.0f,90.0f],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"facing_down\"}"}



# chunk_corner
#summon area_effect_cloud ~ ~ ~ {Tags:["system","chunk_corner","initialized"],Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",CustomName:"{\"text\":\"chunk_corner\"}"}




# target
#summon area_effect_cloud ~ ~ ~ {Tags:["system","target","initialized"],CustomName:"{\"text\":\"target\"}"}


# common nbt
#execute as @e[tag=system,type=minecraft:armor_stand] run data merge entity @s {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{}}]}
#execute as @e[tag=system,type=minecraft:area_effect_cloud] run data merge entity @s {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air"}

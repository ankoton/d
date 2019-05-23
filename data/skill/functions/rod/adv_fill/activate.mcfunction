# Adv.フィール


# xxxxx
# xxxxx
# xxoxx
# xxxxx
# xxxxx
execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ minecraft:air run summon armor_stand ~ ~ ~ {Tags:["adv_fill","processing"],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true,PortalCooldown:200,CustomNameVisible:1b,CustomName:"{\"text\":\"\"}"}


# xxxxx
# xxoxx
# xoxox
# xxoxx
# xxxxx
execute align xyz positioned ~0.5 ~ ~0.5 rotated as @e[tag=direction_xz,limit=4] positioned ^ ^ ^1 if block ~ ~-1 ~ minecraft:air run summon armor_stand ~ ~ ~ {Tags:["adv_fill","processing"],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true,PortalCooldown:200,CustomNameVisible:1b,CustomName:"{\"text\":\"\"}"}


# xxoxx
# xxxxx
# oxxxo
# xxxxx
# xxoxx
execute align xyz positioned ~0.5 ~ ~0.5 rotated as @e[tag=direction_xz,limit=4] positioned ^ ^ ^2 if block ~ ~-1 ~ minecraft:air run summon armor_stand ~ ~ ~ {Tags:["adv_fill","processing"],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true,PortalCooldown:200,CustomNameVisible:1b,CustomName:"{\"text\":\"\"}"}


# ooxoo
# ooxoo
# xxxxx
# ooxoo
# ooxoo
execute align xyz positioned ~0.5 ~ ~0.5 rotated as @e[tag=direction_xz,limit=4] positioned ^1.5 ^ ^1.5 rotated as @e[tag=direction_xz,limit=4] positioned ^0.5 ^ ^0.5 if block ~ ~-1 ~ minecraft:air run summon armor_stand ~ ~ ~ {Tags:["adv_fill","processing"],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoGravity:true,NoBasePlate:true,PortalCooldown:200,CustomNameVisible:1b,CustomName:"{\"text\":\"\"}"}


execute as @e[tag=processing] at @s run setblock ~ ~-1 ~ minecraft:white_wool keep

playsound minecraft:entity.bat.takeoff master @a[distance=..32]

tag @e[tag=processing] remove processing

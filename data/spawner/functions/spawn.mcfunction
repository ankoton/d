# 前提: execute as @e[tag=spawner] at @s rotated as @s if entity @a[distance=..16,gamemode=!spectator] if entity @s[scores={spawn_delay=0}]


# スポーン位置計算
# 厳密には9x9x9になってない。
execute positioned ~ ~1.25 ~ rotated as @e[tag=direction_xz,limit=4] rotated as @e[tag=direction_x,sort=random,limit=1] positioned ^ ^ ^2.5 rotated as @e[tag=direction_x,sort=random,limit=1] positioned ^ ^ ^1 rotated as @e[tag=direction_x,sort=random,limit=1] positioned ^ ^ ^0.5 rotated as @e[tag=direction_y,sort=random,limit=1] positioned ^ ^ ^2.5 rotated as @e[tag=direction_y,sort=random,limit=1] positioned ^ ^ ^1 rotated as @e[tag=direction_y,sort=random,limit=1] positioned ^ ^ ^0.5 rotated as @e[tag=direction_z,sort=random,limit=1] positioned ^ ^ ^2.5 rotated as @e[tag=direction_z,sort=random,limit=1] positioned ^ ^ ^1 rotated as @e[tag=direction_z,sort=random,limit=1] positioned ^ ^ ^0.5 run summon armor_stand ~ ~ ~ {Tags:["spawn","garbage","processing"],Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b}

# ↓わかりやすいやつ
#execute positioned ~ ~1.25 ~ rotated as @e[tag=direction_xz,limit=4]
# rotated as @e[tag=direction_x,sort=random,limit=1] positioned ^ ^ ^2.5
# rotated as @e[tag=direction_x,sort=random,limit=1] positioned ^ ^ ^1
# rotated as @e[tag=direction_x,sort=random,limit=1] positioned ^ ^ ^0.5
# rotated as @e[tag=direction_y,sort=random,limit=1] positioned ^ ^ ^2.5
# rotated as @e[tag=direction_y,sort=random,limit=1] positioned ^ ^ ^1
# rotated as @e[tag=direction_y,sort=random,limit=1] positioned ^ ^ ^0.5
# rotated as @e[tag=direction_z,sort=random,limit=1] positioned ^ ^ ^2.5
# rotated as @e[tag=direction_z,sort=random,limit=1] positioned ^ ^ ^1
# rotated as @e[tag=direction_z,sort=random,limit=1] positioned ^ ^ ^0.5
# run function experimental:report_coordinate

# スポーン数調整
function lib:random/update
scoreboard players operation $tmp global = $random global
scoreboard players operation $tmp global %= $3 const
execute if score $tmp global matches 0 run kill @e[tag=processing,sort=random,limit=1]
execute if score $tmp global matches 1 run kill @e[tag=processing,sort=random,limit=2]
execute if score $tmp global matches 2 run kill @e[tag=processing,sort=random,limit=3]

# 召喚
execute at @e[tag=processing] run summon zombie ~ ~ ~
execute at @e[tag=processing] run particle minecraft:poof ~ ~ ~ 0 1 0 0 8
particle minecraft:flame ~ ~1.7 ~ 0.5 0.5 0.5 0 64

# 
tag @e[tag=processing] remove processing


# spawn_delayの再設定
function lib:random/update
scoreboard players operation @s spawn_delay = $random global
scoreboard players operation @s spawn_delay %= @s d_spawn_delay
scoreboard players operation @s spawn_delay += @s min_spawn_delay

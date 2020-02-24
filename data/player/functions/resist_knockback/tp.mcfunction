summon area_effect_cloud ~ ~ ~ {Tags:[processing]}

data modify entity @e[tag=processing,limit=1] {} merge from storage template:area_effect_cloud 1tick
data modify entity @e[tag=processing,limit=1] Pos set from storage player:current _.Pos

## 座標復元
# execute at @e[tag=resist_knockback_helper,distance=..128,sort=nearest,limit=1] run teleport @s ~ ~ ~
execute at @e[tag=processing,limit=1] run teleport @s ~ ~ ~

## 慣性をゼロに
teleport @s @s

tag @e[tag=processing] remove processing
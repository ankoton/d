# summon area_effect_cloud ~ ~ ~ {Tags:[resist_knockback_helper,initialized,processing]}
# execute as @e[tag=processing] run data modify entity @s {} merge from storage template:area_effect_cloud 3tick
# tag @e[tag=processing] remove processing
scoreboard players set @s resist_kb 2

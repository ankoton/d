# 前提
# executeしない。Serverとして実行する

execute unless entity @e[tag=system_root] run function entity:system/summon/system_root

execute unless entity @e[tag=system_direction_south] run function entity:system/summon/system_direction_south
execute unless entity @e[tag=system_direction_east] run function entity:system/summon/system_direction_east
execute unless entity @e[tag=system_direction_north] run function entity:system/summon/system_direction_north
execute unless entity @e[tag=system_direction_west] run function entity:system/summon/system_direction_west
execute unless entity @e[tag=system_direction_up] run function entity:system/summon/system_direction_up
execute unless entity @e[tag=system_direction_down] run function entity:system/summon/system_direction_down

#execute unless entity @e[tag=system_root] run summon armor_stand ~ ~ ~ {}


# calculate event id
function system:random/update
scoreboard players operation @s event_id = $random global
scoreboard players operation @s event_id %= $1 const

execute if entity @s[scores={event_id=0}] run function event:iyanayokan/none

scoreboard players reset @s event_id

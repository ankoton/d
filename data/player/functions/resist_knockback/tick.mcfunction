execute if entity @s[scores={resist_kb=1..}] run function player:resist_knockback/tp
execute if entity @s[scores={resist_kb=1}] run tellraw @s [{"text":"* "},{"selector":"@s"},{"text":"はふんばった！"}]
scoreboard players remove @s resist_kb 1
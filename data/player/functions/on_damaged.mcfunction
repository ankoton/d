# triggered by on_damaged(advancement)

# activate skill
execute if entity @s[scores={sneak_time=1..,onground=1}] at @s rotated as @s run function skill:hunbaru/save

# debug
me damaged.

execute if entity @e[type=ender_pearl,nbt={owner:{}},distance=0,sort=nearest,limit=1] run tellraw @s ["* ender_pearl invoked."]

#tellraw @s ["Health:",{"nbt":"Health","entity":"@s"},", death_message:",{"score":{"name":"@s","objective":"death_message"}}]
#execute if entity @s[scores={death_message=1..},nbt={Health:0.0f}] run function player:death_message
#execute if entity @s[scores={death_message=1..}] run scoreboard players reset @s death_message

advancement revoke @s only player:on_damaged

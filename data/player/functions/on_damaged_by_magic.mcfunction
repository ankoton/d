# triggered by on_damaged_by_magic(advancement)

# debug
me damaged by magic.
#tellraw @s ["Health:",{"nbt":"Health","entity":"@s"},", death_message:",{"score":{"name":"@s","objective":"death_message"}}]

# キルメッセージ偽装
execute if entity @s[scores={death_message=1..},nbt={Health:0.0f}] run function player:death_message
execute if entity @s[scores={death_message=1..}] run function player:reset_death_message

advancement revoke @s only player:on_damaged_by_magic

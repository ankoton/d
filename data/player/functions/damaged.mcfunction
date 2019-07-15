# triggered by on_damaged(advancement)

# activate skill
execute if entity @s[advancements={player:damaged={by_fire=false,by_magic=false}},scores={sneak_time=1..,onground=1}] at @s rotated as @s run function skill:hunbaru/save

# debug
execute if entity @s[advancements={player:damaged={by_fire=false,by_magic=false}}] run me damaged.
execute if entity @s[advancements={player:damaged={by_fire=true}}] run me damaged by fire.
execute if entity @s[advancements={player:damaged={by_magic=true}}] run me damaged by magic.


execute if entity @e[type=ender_pearl,nbt={owner:{}},distance=0,sort=nearest,limit=1] run tellraw @s ["* ender_pearl invoked."]

# debug
#tellraw @s ["Health:",{"nbt":"Health","entity":"@s"},", death_message:",{"score":{"name":"@s","objective":"death_message"}}]

# キルメッセージ偽装
# この進捗がトリガーされるより前に、`/gamerule showDeathMessages false` してないとバニラメッセージも表示されるよ。
execute if entity @s[scores={death_message=1..},nbt={Health:0.0f}] run function player:death_message/show
execute if entity @s[scores={death_message=1..}] run function player:death_message/reset

advancement revoke @s only player:damaged

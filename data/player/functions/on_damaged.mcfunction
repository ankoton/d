# triggered by on_damaged(advancement)

# activate skill
execute if entity @s[scores={sneak_time=1..,onground=1}] at @s rotated as @s run function skill:hunbaru/save

# debug
me damaged.

execute if entity @e[type=ender_pearl,nbt={owner:{}},distance=0,sort=nearest,limit=1] run tellraw @s ["* ender_pearl invoked."]

advancement revoke @s only player:on_damaged

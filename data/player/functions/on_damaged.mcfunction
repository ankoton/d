# triggered by on_damaged(advancement)

# activate skill
execute if entity @s[scores={sneak_time=1..,onground=1}] at @s rotated as @s run function skill:hunbaru/save

# debug
me damaged.

advancement revoke @s only player:on_damaged

# triggered by damage_taken(advancement)

# activate skill
execute if entity @s[scores={sneak=1..,onground=1}] at @s rotated as @s run function skill:sneaking/hunbaru/save

tellraw @a ["[DEBUG] onground(score):",{"score":{"name":"@s","objective":"onground"}},", OnGround(nbt):",{"nbt":"OnGround","entity":"@s"}]

advancement revoke @s only player:damage_taken

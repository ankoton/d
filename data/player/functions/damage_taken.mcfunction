# triggered by damage_taken(advancement)

# activate skill
execute if entity @s[scores={sneak=1..},nbt={OnGround:1b}] at @s rotated as @s run function skill:sneaking/hunbaru/save

advancement revoke @s only player:damage_taken

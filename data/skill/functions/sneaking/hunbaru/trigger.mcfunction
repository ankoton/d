

execute if entity @s[scores={sneaking=1..}] at @s rotated as @s run function skill:sneaking/hunbaru/save

# reset advancement
advancement revoke @s only skill:hunbaru

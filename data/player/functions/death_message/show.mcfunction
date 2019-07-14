execute if entity @s[scores={death_message=1}] run tellraw @a [{"translate":"%1$s は%2$s","with":[{"selector":"@s"},{"text":"死の運命から逃れられなかった"}]}]
execute if entity @s[scores={death_message=2}] run tellraw @a [{"translate":"%1$s は%2$s","with":[{"selector":"@s"},{"text":"闇の力に溺れた"}]}]

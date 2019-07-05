
gamerule showDeathMessages false
kill @s
tellraw @a [{"selector":"@s"}," は死の運命から逃れられなかった"]
gamerule showDeathMessages true

# initialize
scoreboard players reset @s doom

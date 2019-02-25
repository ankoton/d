# すり抜け防止

gamerule showDeathMessages false
kill @s
tellraw @a [{"selector":"@s"}," は無謀にも破壊不能オブジェクトに挑んだ"]
gamerule showDeathMessages true

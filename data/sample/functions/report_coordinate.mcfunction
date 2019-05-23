tp @e[tag=coordinate,limit=1] ~ ~ ~

tellraw @a ["Command executed at ",{"nbt":"Pos","entity":"@e[tag=coordinate,limit=1]"}]

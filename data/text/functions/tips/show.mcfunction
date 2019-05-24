# 前提: execute as <player>

execute as @e[tag=text_holder,limit=1] run function text:tips/generate

tellraw @s [{"selector":"@e[tag=text_holder,limit=1]"}]


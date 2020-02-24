# helperエンティティを向かい合わせにする

execute as @e[tag=helper] at @s facing entity @e[tag=helper,sort=furthest,limit=1] feet run tp @s ~ ~ ~ ~ ~
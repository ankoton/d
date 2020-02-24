# helper用のエンティティを召喚
# UUIDを指定しているとディメンション間テレポートでバグるので仕方なく使うたび召喚する方式

summon area_effect_cloud ~ ~ ~ {Tags:[system,helper,initialized,helper2],CustomName:"{\"text\":\"helper2\"}"}

execute as @e[tag=helper2] run data modify entity @s {} merge from storage template:area_effect_cloud 1tick

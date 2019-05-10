# helperエンティティ召喚
summon area_effect_cloud ~ ~ ~ {Age:0,Duration:0,ReapplicationDelay:2147483647,WaitTime:2,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:block minecraft:air",Tags:["hunbaru_helper"]}

# 私ふんばってます
tag @s add hunbaru1


# debug用（検知できない）
#execute if entity @e[tag=hunbaru_helper] run say hunbaru_helper found.

# 向き保存(効果がないみたいだが？)
#tp @e[tag=hunbaru_helper,distance=0,limit=1] @s

# 2tick後に実行。1tickだとノックバックしてしまう。
#schedule function skill:sneaking/hunbaru/restore 2t
# debug
#execute as @e[tag=hunbaru_helper] run tellraw @a ["* debug: save: ",{"nbt":"Age","entity":"@s"}]

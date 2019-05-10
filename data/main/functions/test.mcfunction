summon area_effect_cloud ~ ~ ~ {Age:0,Duration:0,ReapplicationDelay:2147483647,WaitTime:2,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Invulnerable:true,Particle:"minecraft:block minecraft:air",Tags:["test"]}
tp @e[tag=test,limit=1] @s
execute if entity @e[tag=test] run say entity found.
execute unless entity @e[tag=test] run say entity not found.

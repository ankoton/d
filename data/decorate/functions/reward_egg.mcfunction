# repeating
# 前提: execute as @e[tag=reward_egg] at @s

playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.8 0

# とりあえずで花火の代替（重い可能性がある）
particle firework ~ ~ ~ 1 1 1 0.5 10 normal

# ダメージが入るので保留
#summon firework_rocket ~ ~2 ~ {Life:1,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16776960,16744448],FadeColors:[I;65344,65535]},{Type:2,Colors:[I;16777215],FadeColors:[I;16777215]}]}}}}


# 1.10.2
#summon FireworksRocketEntity ~0 ~2 ~0 {Life:1,LifeTime:1,FireworksItem:{id:fireworks,Damage:0s,Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Type:0b,Colors:[16776960,16744448],FadeColors:[65344,65535]},{Type:2b,Colors:[16777215],FadeColors:[16777215]}]}}}}

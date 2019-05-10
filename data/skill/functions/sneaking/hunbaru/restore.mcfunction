# 前提: execute as @e[tag=hunbaru_helper] at @s

# 攻撃を受けて0tick目→位置をセーブ


# 1瞬もズレないように毎tickテレポートさせます。（それでも視界が一瞬ぐらっとする）

# 攻撃を受けて1tick目
execute if entity @s[nbt={Age:0}] as @a[tag=hunbaru1,distance=..128,sort=nearest,limit=1] run function skill:sneaking/hunbaru/restore_1

# 攻撃を受けて2tick目
execute if entity @s[nbt={Age:1}] as @a[tag=hunbaru2,distance=..128,sort=nearest,limit=1] run function skill:sneaking/hunbaru/restore_2

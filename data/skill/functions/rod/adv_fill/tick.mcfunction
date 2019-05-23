# Adv.フィールの経過処理
# 前提: execute as @e[tag=adv_fill] at @s

# 名前変え
execute if entity @s[nbt={PortalCooldown:200}] run data modify entity @s CustomName set value "{\"text\":\"10\"}"
execute if entity @s[nbt={PortalCooldown:180}] run data modify entity @s CustomName set value "{\"text\":\"9\"}"
execute if entity @s[nbt={PortalCooldown:160}] run data modify entity @s CustomName set value "{\"text\":\"8\"}"
execute if entity @s[nbt={PortalCooldown:140}] run data modify entity @s CustomName set value "{\"text\":\"7\"}"
execute if entity @s[nbt={PortalCooldown:120}] run data modify entity @s CustomName set value "{\"text\":\"6\"}"
execute if entity @s[nbt={PortalCooldown:100}] run data modify entity @s CustomName set value "{\"text\":\"5\"}"
execute if entity @s[nbt={PortalCooldown:80}] run data modify entity @s CustomName set value "{\"text\":\"4\"}"
execute if entity @s[nbt={PortalCooldown:60}] run data modify entity @s CustomName set value "{\"text\":\"3\"}"
execute if entity @s[nbt={PortalCooldown:40}] run data modify entity @s CustomName set value "{\"text\":\"2\"}"
execute if entity @s[nbt={PortalCooldown:20}] run data modify entity @s CustomName set value "{\"text\":\"1\"}"
execute if entity @s[nbt={PortalCooldown:0}] run setblock ~ ~-1 ~ minecraft:air

# Adv.フィール 強制終了
execute unless block ~ ~-1 ~ minecraft:white_wool run kill @s

# 時間切れ
execute if entity @s[nbt={PortalCooldown:0}] run kill @s

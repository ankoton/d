# ブロックを擬態スポナーにする
# execute positioned <スポナーにしたいブロックの座標>

execute align xyz positioned ~0.5 ~-1.25 ~0.5 run summon armor_stand ~ ~ ~ {Tags:["spawner"],Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{BlockEntityTag:{Delay:20s,MinSpawnDelay:200s,MaxSpawnDelay:800s}}}],CustomName:"{\"text\":\"擬態スポナー\"}"}

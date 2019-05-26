# ブロックを擬態スポナーにする
# execute positioned <スポナーにしたいブロックの座標>

execute align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["spawner","possess_block"],Marker:0b,Invisible:0b,Invulnerable:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spawner",Count:1b,tag:{BlockEntityTag:{Delay:20s,MinSpawnDelay:200s,MaxSpawnDelay:800s}}}],Pose:{Head:[180f,0f,0f]},CustomName:"{\"text\":\"擬態スポナー\"}"}

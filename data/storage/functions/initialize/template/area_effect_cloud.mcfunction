
# AECが消える条件: Age >= WaitTime + Duration
# AECが待機状態(待機状態だと軽い): Age < WaitTime


# Base
data modify storage template:area_effect_cloud Base set value {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,PortalCooldown:2147483647,Invulnerable:true,Particle:"minecraft:block minecraft:air"}

# 無限時間生存(嘘。約3年)
data modify storage template:area_effect_cloud inf set from storage template:area_effect_cloud Base
data modify storage template:area_effect_cloud inf merge value {Duration:0}

# 0tick生存
# 次のエンティティtickで削除される
# data modify storage template:area_effect_cloud 0tick set from storage template:area_effect_cloud Base
# data modify storage template:area_effect_cloud 0tick merge value {Duration:1}

# 1tick生存
# 次のエンティティtickで削除される
data modify storage template:area_effect_cloud 1tick set from storage template:area_effect_cloud Base
data modify storage template:area_effect_cloud 1tick merge value {Duration:2}

# 2tick生存
data modify storage template:area_effect_cloud 2tick set from storage template:area_effect_cloud Base
data modify storage template:area_effect_cloud 2tick merge value {Duration:3}

# 3tick生存
data modify storage template:area_effect_cloud 3tick set from storage template:area_effect_cloud Base
data modify storage template:area_effect_cloud 3tick merge value {Duration:4}

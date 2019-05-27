# エンティティ初期化
# 前提: execute as @e[tag=!initialized]

#execute if entity @s[type=area_effect_cloud]

#execute if entity @s[type=armor_stand]

#execute if entity @s[type=arrow]

#execute if entity @s[type=bat]

# プレイヤー
execute if entity @s[type=player] run function entity:player/initialize


# ブロックに憑依するカスタムスポナー
execute if entity @s[tag=spawner_possess_block] run function entity:spawner/possess_block/initialize

# エンティティに憑依するカスタムスポナー
execute if entity @s[tag=spawner_possess_entity] run function entity:spawner/possess_entity/initialize

# 印玉のパーティクル表示
execute if entity @s[tag=reward_egg] run function entity:reward_egg/initialize


#tag @s add initialized

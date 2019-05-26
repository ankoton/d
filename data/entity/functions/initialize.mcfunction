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

#execute if entity @s[type=bat] run function entity:bat/initialize


#tag @s add initialized

# repeating (毎tick実行)

################################
# 非依存処理
################################


################################
# ゲームルール修正？
################################

################################
# ？？？？
################################



# プレイヤーリスポーン
execute as @a[scores={death=1..,age=1..}] run function entity:respawn

################################
# 移動補正
################################

################################
# ブロック判定？
################################

# 奈落で生存することは許されない
execute as @a at @s if entity @s[y=-250,dy=50] run kill @s

# めり込み対策
execute as @a[gamemode=!creative,gamemode=!spectator,scores={age=1..}] at @s rotated as @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #system:immotal_object run function entity:suffocation

################################
# 座標判定？
################################

################################
# スポーン？
################################
function event:check

################################
# エンティティ初期化
################################

# 印玉のパーティクル表示
function system:reward_egg

################################
# バフ・デバフ・状態異常修正、処理、進行
################################


# 死の宣告check
function effect:doom/check

# 透明化維持
function entity:invisible


# 死の宣告処理
execute as @a[scores={doom=0..}] run function effect:doom/tick

################################
# スポーンしたエンティティの処理
################################




################################
# ブロック設置・破壊検知
################################



################################
# エンティティの行動処理
################################


function skill:check


################################
# ダメージ判定？
################################


################################
# HP補正？
################################

execute as @a[tag=force_hp_1] run function effect:1

# カスタムHP回復
execute as @a[scores={health_healing=0..}] run function effect:health_healing


################################
# MP修正
################################


################################
# エンティティ削除
################################

function entity:garbage


################################
# パーティクル表示？
################################

################################
# 
################################

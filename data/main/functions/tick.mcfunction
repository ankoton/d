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

# 踏ん張りスキルrestore
execute as @e[tag=hunbaru_helper] at @s run function skill:sneaking/hunbaru/restore

################################
# ブロック判定？
################################

# 奈落で生存することは許されない
execute as @a[y=-250,dy=50] run kill @s

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

# 透明化→特殊効果tagに変換
function effect:convert_into_custom_effect


# 死の宣告解除
execute as @a[tag=doom_escape] run function effect:doom/escape

# 死の宣告処理
execute as @a[tag=doom] run function effect:doom/tick


# 透明化維持
function entity:invisible

################################
# スポーンしたエンティティの処理
################################




################################
# ブロック設置・破壊検知
################################



################################
# エンティティの行動処理
################################

execute as @a run function entity:player/sneaking

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

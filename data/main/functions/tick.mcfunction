################################
# #minecraft:tick
################################
# repeating (毎tick実行)


################################
# system entity 生存check
################################
#function entity:system/check
execute store result score $system_entity_num global if entity @e[tag=system]


################################
# load settings
################################



################################
# 非依存処理
################################


################################
# ゲームルール修正？
################################

################################
# get current status of player
################################
# check nbt before /tp

# login
execute as @a[scores={leave_game=1..}] run function player:login

# respawn
execute as @a[scores={death=1..,age=1..}] run function player:respawn


# detect land
execute as @a store success score @s land if entity @s[scores={onground=0},nbt={OnGround:1b}]

# detect jumping
execute as @a if entity @s[scores={land=1}] run scoreboard players reset @s jumping
execute as @a if entity @s[scores={jump=1}] store success score @s jumping run scoreboard players reset @s jump

# detect sneaking
execute as @a if entity @s[scores={sneaking=1..}] unless entity @s[scores={sneak_time=1..}] run scoreboard players reset @s sneaking
execute as @a if entity @s[scores={sneak_time=1..}] store success score @s sneaking run scoreboard players reset @s sneak_time

# detect trigger
#execute


# get nbt
execute as @a store result score @s onground run data get entity @s OnGround


################################
# 移動補正
################################

# 踏ん張りスキルrestore
#execute as @e[tag=hunbaru_helper] at @s run function skill:sneaking/hunbaru/restore
execute as @a[tag=hunbaru1] at @e[tag=hunbaru_helper,nbt={Age:0},distance=..128,sort=nearest,limit=1] run function skill:sneaking/hunbaru/restore_1
execute as @a[tag=hunbaru2] at @e[tag=hunbaru_helper,nbt={Age:1},distance=..128,sort=nearest,limit=1] run function skill:sneaking/hunbaru/restore_2

################################
# 絶対座標判定
################################

# 奈落で生存することは許されない
# y=-200..-250 でkill
execute as @a[y=-200,dy=-50] run kill @s

################################
# ブロック判定？
################################


# めり込み対策
#execute as @a[gamemode=!creative,gamemode=!spectator,scores={age=1..}] at @s rotated as @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ #system:immotal_object run function entity:player/suffocation


################################
# スポーン？
################################

# ブロックに憑依したコマンドゴリ押し式スポナー 動作
execute as @e[tag=spawner_possess_block] at @s rotated as @s if entity @a[gamemode=!spectator,distance=..32] run function entity:spawner/possess_block/tick

# エンティティに憑依したコマンドゴリ押し式スポナー 動作
execute as @e[tag=spawner_possess_entity] at @s rotated as @s if entity @a[gamemode=!spectator,distance=..32] run function entity:spawner/possess_entity/tick


################################
# initialize entity
################################

execute as @e[tag=!initialized] at @s rotated as @s run function entity:initialize



################################
# tick entity
################################

execute as @e at @s rotated as @s run function entity:tick


################################
# tick effect
################################
# バフ・デバフ・状態異常修正、処理、進行

# tick custom_effect
execute as @a[scores={doom=0..}] run function effect:doom/tick

# effect最終調整
function effect:control


################################
# エンティティの行動処理
################################



# スキル変更処理
execute as @a at @s run function skill:change

# スキル起動処理
execute as @a at @s rotated as @s run function skill:activate


# Adv.フィール用毎tick処理
execute as @e[tag=adv_fill] at @s run function skill:rod/adv_fill/tick


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
# finalization
################################

# garbage collection
function entity:garbage_collection

# return system entity
function entity:system/return


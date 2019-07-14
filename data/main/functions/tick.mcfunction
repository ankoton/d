################################
# #minecraft:tick
################################
# Run every 1 gametick


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
#execute as @a store result score @s land if entity @s[scores={onground=0},nbt={OnGround:1b}]
#execute as @a[scores={land=1}] at @s run function player:land

# detect land_by_jump
execute as @a[scores={land_by_jump=1}] unless entity @s[scores={jumping=1..}] run scoreboard players reset @s land_by_jump
execute as @a[scores={jumping=1..,onground=0},nbt={OnGround:1b}] store success score @s land_by_jump run scoreboard players reset @s jumping

#execute as @a store result score @s land_by_jump if entity @s[scores={onground=0,jumping=1},nbt={OnGround:1b}]
#execute as @a store result score @s land_by_jump if entity @s[scores={land=1,jumping=1}]
#execute as @a[scores={land_by_jump=1}] at @s run function player:land_by_jump
#execute as @a[scores={land_by_jump=1}] run scoreboard players reset @s jumping


# detect jump
execute as @a[scores={jump=1..,jumping=1}] run scoreboard players reset @s jump
execute as @a[scores={jump=1..}] run scoreboard players set @s jumping 1
#execute as @a[scores={jump=1}] at @s store success score @s jumping run function player:jump


# detect sneak
#execute as @a[scores={sneak_time=1}] at @s run function player:start_sneak
execute as @a[scores={sneak_time=1..}] unless entity @s[scores={sneak_time_impl=1..}] run scoreboard players reset @s sneak_time
execute as @a[scores={sneak_time_impl=1..}] run scoreboard players reset @s sneak_time_impl


# detect /trigger
execute as @a[scores={change_skill=1..}] run function player:skill/change
execute as @a[scores={set_skill_id=1..}] run function player:skill/set


# get nbt
execute as @a store result score @s onground run data get entity @s OnGround


################################
# 移動補正
################################

# 踏ん張りスキルrestore
execute as @a[tag=hunbaru1] at @e[tag=hunbaru_helper,nbt={Age:0},distance=..128,sort=nearest,limit=1] run function skill:hunbaru/restore_1
execute as @a[tag=hunbaru2] at @e[tag=hunbaru_helper,nbt={Age:1},distance=..128,sort=nearest,limit=1] run function skill:hunbaru/restore_2

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
# every 1 second
################################
execute if score $second global matches 1 run function main:second


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
# エンティティの行動処理
################################


# 人参棒
execute as @a[scores={use_carrot_stick=1..}] at @s run function player:use_carrot_on_a_stick

# ホップ・ステップ・ジャンプ
execute as @a[] at @s run function skill:hop_step_jump/tick

# 挨拶
execute as @a[] at @s run function skill:aisatsu/tick


# Adv.フィール用毎tick処理
execute as @e[tag=adv_fill] at @s run function skill:adv_fill/tick


################################
# tick effect
################################
# バフ・デバフ・状態異常修正、処理、進行

# tick custom_effect
execute as @a[scores={doom=0..}] run function effect:doom/tick

# effect最終調整
function effect:control


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


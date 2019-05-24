# 初回限定無料！！！


################################
# initialize system entity
################################
function entity:system/initialize


################################
# define scoreboard
################################

# 定数
scoreboard objectives add const dummy {"text":"定数"}

# グローバル変数
scoreboard objectives add global dummy {"text":"グローバル変数"}


# readonly
scoreboard objectives add health health {"text":"HP"}
scoreboard objectives add death deathCount {"text":"デスカウント"}
scoreboard objectives add use_carrot_stick minecraft.used:minecraft.carrot_on_a_stick {"text":"人参棒使用"}
scoreboard objectives add use_rod minecraft.used:minecraft.carrot_on_a_stick {"text":"人参棒使用フラグ"}
scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}
scoreboard objectives add sneaking dummy {"text":"スニーク"}

# 自分で初期化するけど基本readonly
scoreboard objectives add age minecraft.custom:minecraft.time_since_death {"text":"生きている時間"}
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt {"text":"直接攻撃ダメージ"}

scoreboard objectives add q_carrot_stick minecraft.dropped:minecraft.carrot_on_a_stick {"text":"人参棒捨てた"}

scoreboard objectives add mine_dirt minecraft.mined:minecraft.dirt {"text":"土を掘った"}


# スキル
scoreboard objectives add change_skill trigger {"text":"スキル変更トリガー"}
scoreboard objectives add set_rod_skill trigger {"text":"ロッドスキル設定トリガー"}
scoreboard objectives add rod_skill dummy {"text":"ロッドスキル"}


# 状態異常・特殊効果
scoreboard objectives add effect_id dummy {"text":"カスタムエフェクトid"}
scoreboard objectives add doom dummy {"text":"死の宣告"}
scoreboard objectives add doom_d dummy {"text":"死の宣告カウント"}
scoreboard objectives add health_healing dummy {"text":"カスタムHP回復"}


# コマンド式スポナー
scoreboard objectives add spawn_delay dummy {"text":"次のスポーンまであと[gametick]"}
scoreboard objectives add min_spawn_delay dummy {"text":"最低スポーン周期"}
scoreboard objectives add d_spawn_delay dummy {"text":"⊿スポーン周期"}


# 変数
scoreboard objectives add event_id dummy {"text":"嫌な予感イベントid"}


# 作業用変数

################################
# initialize const value
################################

# integral constant
scoreboard players set $-1 const -1
scoreboard players set $0 const 0
scoreboard players set $1 const 1
scoreboard players set $2 const 2
scoreboard players set $3 const 3
scoreboard players set $4 const 4
scoreboard players set $5 const 5
scoreboard players set $6 const 6
scoreboard players set $7 const 7
scoreboard players set $8 const 8
scoreboard players set $9 const 9
scoreboard players set $10 const 10
scoreboard players set $60 const 60
scoreboard players set $100 const 100
scoreboard players set $200 const 200
scoreboard players set $600 const 600
scoreboard players set $int_max const 2147483647
scoreboard players set $int_min const -2147483648

# 乱数
scoreboard players set $MWCMultiplier const 31743
scoreboard players set $MWCBase const 65536

# 嫌な予感イベントの種類
scoreboard players set $event_num const 2

# system entity の総数
execute store result score $system_entity_num const if entity @e[tag=system]


################################
# initialize global variable
################################

# 乱数初期化
function lib:random/initialize


################################
# initialize event
################################

# イベント開始
schedule function event:start 72000t

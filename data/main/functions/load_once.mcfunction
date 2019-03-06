# 初回限定！！！

scoreboard objectives add health health {"text":"HP"}
scoreboard objectives add death deathCount {"text":"デスカウント"}
scoreboard objectives add use_carrot_stick minecraft.used:minecraft.carrot_on_a_stick {"text":"人参棒使用"}
scoreboard objectives add age minecraft.custom:minecraft.time_since_death {"text":"生きている時間"}
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt {"text":"直接攻撃ダメージ"}

scoreboard objectives add q_carrot_stick minecraft.dropped:minecraft.carrot_on_a_stick {"text":"人参棒捨てた"}

scoreboard objectives add rod_skill dummy {"text":"ロッドスキル"}
scoreboard objectives add rod_skill_mode dummy {"text":"ロッドスキル選択フラグ"}
scoreboard objectives add rod_skill_A dummy {"text":"ロッドスキルA"}
scoreboard objectives add rod_skill_B dummy {"text":"ロッドスキルB"}

scoreboard objectives add event_id dummy {"text":"嫌な予感イベントid"}
scoreboard objectives add doom dummy {"text":"死の宣告"}
scoreboard objectives add doom_d dummy {"text":"死の宣告カウント"}
scoreboard objectives add tips dummy {"text":"Tips"}
scoreboard objectives add health_healing dummy {"text":"カスタムHP回復"}

scoreboard objectives add global dummy {"text":"グローバル変数"}
scoreboard objectives add const dummy {"text":"定数"}



# 定数初期化
scoreboard players set $-1 const -1
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
scoreboard players set $MWCMultiplier const 31743
scoreboard players set $MWCBase const 65536
scoreboard players set $max const 2147483647
scoreboard players set $min const -2147483648

# comment out for debug
#scoreboard players set $0 const 0


# 乱数初期化
function system:random/init

scoreboard players set $event_timer global 72000


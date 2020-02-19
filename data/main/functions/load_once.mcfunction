# load once

tellraw @a "only once"
tellraw @a "ようこそ！"

################################
# declare scoreboard
################################

# variable
scoreboard objectives add global dummy {"text": "グローバル変数"}
scoreboard objectives add local dummy {"text": "ローカル変数"}
scoreboard objectives add tmp dummy {"text": "作業用変数"}

# player status
scoreboard objectives add health health {"text": "health"}
scoreboard objectives add death deathCount {"text": "death"}
scoreboard objectives add age minecraft.custom:minecraft.time_since_death {"text": "death"}
scoreboard objectives add logout minecraft.custom:minecraft.leave_game {"text": "logout"}
scoreboard objectives add jump minecraft.custom:minecraft.jump {"text": "jump"}
scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time {"text": "sneak_time"}
scoreboard objectives add use_rod minecraft.used:minecraft.carrot_on_a_stick {"text": "use_carrot_on_a_stick"}
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt {"text": "直接攻撃ダメージ"}


################################
# initialize constant value
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
scoreboard players set $11 const 11
scoreboard players set $12 const 12
scoreboard players set $13 const 13
scoreboard players set $14 const 14
scoreboard players set $15 const 15
scoreboard players set $16 const 16
scoreboard players set $17 const 17
scoreboard players set $18 const 18
scoreboard players set $19 const 19
scoreboard players set $20 const 20
scoreboard players set $60 const 60
scoreboard players set $100 const 100
scoreboard players set $200 const 200
scoreboard players set $600 const 600
scoreboard players set $max const 2147483647
scoreboard players set $min const -2147483648

# random
function random:initialize
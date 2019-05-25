
# 定数
scoreboard objectives remove const

# グローバル変数
scoreboard objectives remove global


# readonly
scoreboard objectives remove health
scoreboard objectives remove death
scoreboard objectives remove leave_game
scoreboard objectives remove use_carrot_stick
scoreboard objectives remove use_rod
scoreboard objectives remove sneak_time
scoreboard objectives remove sneaking

# 自分で初期化するけど基本readonly
scoreboard objectives remove age
scoreboard objectives remove damage_dealt

scoreboard objectives remove q_carrot_stick

scoreboard objectives remove mine_dirt


# スキル
scoreboard objectives remove change_skill
scoreboard objectives remove set_rod_skill
scoreboard objectives remove rod_skill


# 状態異常・特殊効果
scoreboard objectives remove effect_id
scoreboard objectives remove doom
scoreboard objectives remove doom_d
scoreboard objectives remove health_healing


# コマンド式スポナー
scoreboard objectives remove spawn_delay
scoreboard objectives remove min_spawn_delay
scoreboard objectives remove d_spawn_delay


# 変数
scoreboard objectives remove event_id


kill @e[tag=system]

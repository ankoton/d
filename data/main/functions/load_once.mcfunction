# 初回限定！！！

scoreboard objectives add use_carrot_stick minecraft.used:minecraft.carrot_on_a_stick {"text":"人参棒使用"}
scoreboard objectives add age minecraft.custom:minecraft.time_since_death {"text":"生きている時間"}

scoreboard objectives add global dummy {"text":"グローバル変数"}
scoreboard objectives add const dummy {"text":"定数"}

scoreboard objectives add doom dummy {"text":"死の宣告カウンタ"}


# 定数初期化
scoreboard players set $MWCMultiplier const 31743
scoreboard players set $MWCBase const 65536
# comment out for debug
#scoreboard players set $0 const 0


# 乱数初期化
#execute unless score $random global = $random global run function system:random/init
function system:random/init


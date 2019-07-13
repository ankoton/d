
# ホップ・ステップ・ジャンプ用 毎tick実行function

# ジャンプしたとき
execute if entity @s[scores={jump=1}] run function skill:hop_step_jump/on_jump

# 着地直後
execute if entity @s[scores={land_by_jump=1}] run function skill:hop_step_jump/land_by_jump

# 地面の上にいる
execute if entity @s[scores={onground=1}] run function skill:hop_step_jump/on_ground

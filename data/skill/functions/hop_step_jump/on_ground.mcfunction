
# (step状態 or jump状態)で着地直後にジャンプせずに1tick経過したとき => reset
# ジャンプによる着地直後ではない && (step状態 || jump状態) => reset
execute unless entity @s[scores={land_by_jump=1}] if entity @s[scores={hop_step_jump=2..3}] run function skill:hop_step_jump/reset_flag

# 常時hop発動可能状態にする
function skill:hop_step_jump/effect/hop

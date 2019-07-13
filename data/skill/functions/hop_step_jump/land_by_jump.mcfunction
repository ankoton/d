
# hop_step_jump is flag
# hop_step_jump == 0 => hop発動可能 or jump終了
# hop_step_jump == 1 => hopした and step発動可能
# hop_step_jump == 2 => stepした and jump発動可能


# 着地直後にジャンプ力上昇を付与
# hop状態 => stepのエフェクトを付与
execute unless entity @s[scores={hop_step_jump=1..}] run function skill:hop_step_jump/effect/step
# step状態 => jumpのエフェクトを付与
execute if entity @s[scores={hop_step_jump=1}] run function skill:hop_step_jump/effect/jump
# jump状態 => これ以上ないのでエフェクトを消去
execute if entity @s[scores={hop_step_jump=2}] run effect clear @s minecraft:jump_boost

# rotate flag
scoreboard players add @s hop_step_jump 1
execute if entity @s[scores={hop_step_jump=3..}] run scoreboard players reset @s hop_step_jump

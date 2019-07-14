
# hop_step_jump is flag
# hop_step_jump == 1 => hop発動可能 or jump終了
# hop_step_jump == 2 => hopした and step発動可能
# hop_step_jump == 3 => stepした and jump発動可能


# rotate flag
scoreboard players add @s hop_step_jump 1
execute if entity @s[scores={hop_step_jump=4..}] run scoreboard players set @s hop_step_jump 1


# 着地直後にジャンプ力上昇を付与
# jump終了 => これ以上ないのでエフェクトを消去
execute if entity @s[scores={hop_step_jump=1}] run effect clear @s minecraft:jump_boost
# hop終了 => stepのエフェクトを付与
execute if entity @s[scores={hop_step_jump=2}] run function skill:hop_step_jump/effect/step
# step終了 => jumpのエフェクトを付与
execute if entity @s[scores={hop_step_jump=3}] run function skill:hop_step_jump/effect/jump

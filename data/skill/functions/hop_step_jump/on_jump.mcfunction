
execute unless entity @s[scores={hop_step_jump=1..}] run say HOP!
execute if entity @s[scores={hop_step_jump=1}] run say STEP!
execute if entity @s[scores={hop_step_jump=2}] run say JUMP!

# repeating

################################
# 死の宣告 detect
################################


# custom effect
execute as @a[nbt={ActiveEffects:[{Id:14b,Amplifier:3b}]}] unless entity @s[scores={doom=0..}] run function effect:doom/give
execute as @a[nbt={ActiveEffects:[{Id:14b,Amplifier:7b}]},scores={doom=0..}] run function effect:doom/escape

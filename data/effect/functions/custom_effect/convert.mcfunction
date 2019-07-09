# convert invisibility into custom effect (with advancement)


# convert
execute if entity @s[advancements={effect:custom_effect={doom=true}}] unless entity @s[scores={doom=0..}] run function effect:doom/give
execute if entity @s[advancements={effect:custom_effect={doom_escape=true}},scores={doom=0..}] run function effect:doom/escape


# initialize
effect clear @s minecraft:invisibility
advancement revoke @s only effect:custom_effect

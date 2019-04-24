

# run
execute unless entity @s[scores={rod_skill=1..}] run function skill:null
execute if entity @s[scores={rod_skill=1}] run function skill:fill


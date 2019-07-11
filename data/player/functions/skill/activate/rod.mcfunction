
# activate rod skill
execute if entity @s[scores={rod_skill=10000}] run function skill:null/activate
execute if entity @s[scores={rod_skill=10100},gamemode=!adventure] run function skill:fill/activate
execute if entity @s[scores={rod_skill=10100},gamemode=adventure] run function skill:adv_fill/activate
execute if entity @s[scores={rod_skill=10101}] run function skill:adv_fill/activate
execute if entity @s[scores={rod_skill=10200}] run function skill:cure/activate


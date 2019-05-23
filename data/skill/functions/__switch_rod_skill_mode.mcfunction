
# 0 => 1 , 1 => 0
scoreboard players add @s rod_skill_mode 1
scoreboard players operation @s rod_skill_mode %= $2 const

# 演出
execute if entity @s[scores={rod_skill_mode=1}] run tellraw @s ["モードチェンジ ロッドスキルα",{"text":"変更！","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger change_rod_skill"}}]
execute if entity @s[scores={rod_skill_mode=0}] run tellraw @s ["モードチェンジ ロッドスキルβ"]

# スキルid計算
scoreboard players set @s rod_skill 0
execute if entity @s[scores={rod_skill_mode=1}] run scoreboard players operation @s rod_skill = @s rod_skill_A
execute if entity @s[scores={rod_skill_mode=0}] run scoreboard players operation @s rod_skill = @s rod_skill_B


# 拾う(うまくいかない)
data merge entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"},Age:0s},sort=nearest,limit=1] {PickupDelay:0s}
#execute store result score $tmp global run data get entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick"},Age:0s},sort=nearest,limit=1] PickupDelay



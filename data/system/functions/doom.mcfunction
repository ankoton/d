# repeating

execute as @a[nbt={ActiveEffects:[{Id:14b,Amplifier:3b}]}] run tag @s add doom
execute as @a[nbt={ActiveEffects:[{Id:14b,Amplifier:7b}]}] run tag @s add escape_doom

# no duplicate.
#   if score @s doom = @s doom は、doomスコアが存在したらtrue
execute as @a[tag=doom] if score @s doom = @s doom run tag @s remove doom


# doom start
execute as @a[tag=doom] run scoreboard players set @s doom 600

execute as @a[tag=doom] run me は§4死の宣告§fを受けた！


# escape doom
execute as @a[tag=escape_doom] unless score @s doom matches 0.. run tag @s remove escape_doom

execute as @a[tag=escape_doom] run scoreboard players set @s doom -1

execute as @a[tag=escape_doom] run me は§4死の宣告§fから§a逃れた§f！


# display
execute as @a[scores={doom=600}] run tellraw @s "§410"
execute as @a[scores={doom=540}] run tellraw @s "§49"
execute as @a[scores={doom=480}] run tellraw @s "§48"
execute as @a[scores={doom=420}] run tellraw @s "§47"
execute as @a[scores={doom=360}] run tellraw @s "§46"
execute as @a[scores={doom=300}] run tellraw @s "§45"
execute as @a[scores={doom=240}] run tellraw @s "§44"
execute as @a[scores={doom=180}] run tellraw @s "§43"
execute as @a[scores={doom=120}] run tellraw @s "§42"
execute as @a[scores={doom=60}] run tellraw @s "§41"

# kill
execute as @a[scores={doom=0}] run kill @s

# count
execute as @a if score @s doom = @s doom run scoreboard players remove @s doom 1


# initialize
# 死の宣告を受けてから20tick(=1秒)は死の宣告を受けない
execute as @a[scores={doom=-20}] run scoreboard players reset @s doom

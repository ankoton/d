# fix scoreboard of sneak

# require:
#  execute as @a run function <this>


# reset 'sneak' when @s stoped sneaking
execute unless entity @s[scores={sneak_time=1..}] if entity @s[scores={sneak=1..}] run scoreboard players reset @s sneak

# increase 'sneak' while sneaking
execute if entity @s[scores={sneak_time=1..}] run scoreboard players add @s sneak 1


# initialize
scoreboard players reset @s sneak_time

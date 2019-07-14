# level up


# update max_mp
scoreboard players operation @s max_mp += @s level

# level up
scoreboard players add @s level 1

# fix max_mp if level == 1
execute if entity @s[scores={level=1}] run scoreboard players set @s max_mp 100

# announce to chat
tellraw @a [{"translate":"* %1$s はレベル%2$sに上がった！","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"level"}}]}]

# sound
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 2

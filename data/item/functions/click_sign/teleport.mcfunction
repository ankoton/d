

execute at @s run particle minecraft:portal ~ ~1 ~ 0 0.5 0 1 100 normal
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1

execute at @s run spreadplayers ~ ~ 0 1 false @s

execute at @s run particle minecraft:firework ~ ~38 ~ 0.01 80 0.01 0.1 500 normal
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~ 1 1

# skill: cure: HPを8回復

scoreboard players add @s health_healing 8

playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:heart ~ ~0.1 ~ 0.7 0.1 0.7 0 10 normal
particle minecraft:happy_villager ~ ~0.3 ~ 0.5 0.3 0.5 0 20 normal

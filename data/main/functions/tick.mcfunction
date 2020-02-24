#minecraft:tick

## system entity
# function system:summon

## nbtの値を保持
### tp後はエンティティtickまで{OnGround:1b}になってしまうため。
execute as @a store result score @s onground run data get entity @s OnGround

## initialize player
execute as @a[tag=!initialized] at @s rotated as @s run function player:initialize

## player tick
execute as @a at @s rotated as @s run function player:tick

execute as @e at @s rotated as @s run function entity:tick

## system entity
# function system:return

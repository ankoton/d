# Store position of villager's meeting_point in 0-0-0-0-cafe

# require:
#  execute if entity 0-0-0-0-cafe as @e[type=villager,nbt={Brain:{memories:{"minecraft:meeting_point":{}}}},limit=1] run function <this>

execute store result entity 0-0-0-0-cafe Pos[0] double 1.0 run data get entity @s Brain.memories.minecraft:meeting_point.pos[0]
execute store result entity 0-0-0-0-cafe Pos[1] double 1.0 run data get entity @s Brain.memories.minecraft:meeting_point.pos[1]
execute store result entity 0-0-0-0-cafe Pos[2] double 1.0 run data get entity @s Brain.memories.minecraft:meeting_point.pos[2]
execute as 0-0-0-0-cafe at @s facing entity @s eyes run tp @s ~0.5 ~0.5 ~0.5 ~ ~

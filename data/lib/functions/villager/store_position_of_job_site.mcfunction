# Store position of villager's job_site in 0-0-0-0-cafe

# require:
#  execute if entity 0-0-0-0-cafe as @e[type=villager,nbt={Brain:{memories:{"minecraft:job_site":{}}}},limit=1] run function <this>

execute store result entity 0-0-0-0-cafe Pos[0] double 1.0 run data get entity @s Brain.memories.minecraft:job_site.pos[0]
execute store result entity 0-0-0-0-cafe Pos[1] double 1.0 run data get entity @s Brain.memories.minecraft:job_site.pos[1]
execute store result entity 0-0-0-0-cafe Pos[2] double 1.0 run data get entity @s Brain.memories.minecraft:job_site.pos[2]
execute as 0-0-0-0-cafe at @s facing entity @s eyes run tp @s ~0.5 ~0.99 ~0.5 ~ ~

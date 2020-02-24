# Move entitiy chunk_corner(northwest) where it is.

# require:
#  execute as <entities(no player)> run function <this>
#

execute store result entity @s Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @s Pos[2] double 16 run data get entity @s Pos[2] 0.0625
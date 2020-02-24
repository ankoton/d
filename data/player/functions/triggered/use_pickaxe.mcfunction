me used pickaxe.
tellraw @a {"storage":"player:1","nbt":"SelectedItem"}
tellraw @a {"nbt":"SelectedItem","entity":"@s"}
scoreboard players reset @s use_pickaxe
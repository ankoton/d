# Display string to open <locked block>

# requires:
#  execute as <player(s) who see tellraw> positioned <locked block> run function <this>


execute if data block ~ ~ ~ Lock run tellraw @s [{"text":"","color":"aqua"},{"text":"[how_to_unlock] ","color":"white"},"解除用キーは [",{"nbt":"Lock","block":"~ ~ ~"},"] です。"]
execute unless data block ~ ~ ~ Lock run tellraw @s [{"text":"[how_to_unlock] ","color":"white"},{"text":"このブロックには、ロックがかかっていません。","color":"red"}]

#minecraft:load

# declare constant
scoreboard objectives add const dummy {"text": "const"}

# call load_once
execute unless score $initialized const = $initialized const store success score $initialized const run function main:load_once

# reset initialized flag if debug mode.
execute if score $debug const matches 1 run scoreboard players reset $initialized const

tellraw @a "Datapack Loaded."
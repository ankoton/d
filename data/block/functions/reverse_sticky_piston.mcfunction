execute if block ~ ~ ~ minecraft:command_block[facing=north] run setblock ~ ~ ~ minecraft:sticky_piston[facing=south] replace
execute if block ~ ~ ~ minecraft:command_block[facing=south] run setblock ~ ~ ~ minecraft:sticky_piston[facing=north] replace
execute if block ~ ~ ~ minecraft:command_block[facing=west] run setblock ~ ~ ~ minecraft:sticky_piston[facing=east] replace
execute if block ~ ~ ~ minecraft:command_block[facing=east] run setblock ~ ~ ~ minecraft:sticky_piston[facing=west] replace
execute if block ~ ~ ~ minecraft:command_block[facing=up] run setblock ~ ~ ~ minecraft:sticky_piston[facing=down] replace
execute if block ~ ~ ~ minecraft:command_block[facing=down] run setblock ~ ~ ~ minecraft:sticky_piston[facing=up] replace

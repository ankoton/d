################################
# #minecraft:load
################################

scoreboard objectives add const dummy {"text":"定数"}
execute unless score $initialized const = $initialized const store success score $initialized const run function main:load_once

# for debug
#tellraw @a[tag=admin] ["* load_once return with exit code ",{"score":{"objective":"const","name":"$initialized"}}]
scoreboard players reset $initialized const

# finish
tellraw @a[tag=admin] ["** Datapack Loaded. **"]

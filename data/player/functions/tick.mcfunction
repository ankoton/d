
## begin phase
function storage:player/restore_nbt

## fix score
execute unless entity @s[scores={sneaking=1..}] run scoreboard players reset @s sneak_time


execute if entity @s[scores={resist_kb=1..}] run function player:resist_knockback/tick


execute if entity @s[scores={use_rod=1..}] run function player:triggered/use_carrot_on_a_stick
execute if entity @s[scores={talk=1..}] run function player:triggered/talked_to_villager
execute if entity @a[scores={use_pickaxe=1..}] run function player:triggered/use_pickaxe


## end phase


### fix score
scoreboard players reset @s sneaking

### store nbt
function storage:player/store_nbt

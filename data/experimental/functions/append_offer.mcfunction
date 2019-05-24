
# 前提: execute as <村人> positioned <チェストの座標>


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:0b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:9b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:18b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:1b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:10b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:19b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:2b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:11b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:20b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:3b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:12b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:21b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:4b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:13b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:22b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:5b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:14b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:23b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:6b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:15b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:24b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:7b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:16b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:25b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


# add empty recipe
data modify entity @s Offers.Recipes append value {maxUses:2147483647,xp:0,rewardExp:0b}
# set 'buy' of the last recipe
data modify entity @s Offers.Recipes[-1].buy merge from block ~ ~ ~ Items[{Slot:8b}]
# set 'buyB' of the last recipe
data modify entity @s Offers.Recipes[-1].buyB merge from block ~ ~ ~ Items[{Slot:17b}]
# set 'sell' of the last recipe
execute store success score $succeess_count global run data modify entity @s Offers.Recipes[-1].sell merge from block ~ ~ ~ Items[{Slot:26b}]
# remove if recipe is unfair
execute unless score $succeess_count global matches 1 run data remove entity @s Offers.Recipes[-1]


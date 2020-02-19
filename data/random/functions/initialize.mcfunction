
# initialize
scoreboard players set $rand_m const 31743
scoreboard players set $rand_b const 65536

# mx + c = gametime
# x = mx + c
execute store result score $random global run time query gametime

# c = x (copy)
scoreboard players operation $rand_c global = $random global

# x %= b
scoreboard players operation $random global %= $rand_b const

# c /= b
scoreboard players operation $rand_c global /= $rand_b const
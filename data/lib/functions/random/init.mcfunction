
# ax + c = gametime とみなして初期化
execute store result score $random global run time query gametime


# c = x (コピー)
scoreboard players operation $MWCCarry global = $random global


# x %= b
scoreboard players operation $random global %= $MWCBase const


# c /= b
scoreboard players operation $MWCCarry global /= $MWCBase const

# キャリー付き乗算乱数
# lag-1 MWC

# xₙ₊₁ = (axₙ + cₙ) % b
# cₙ₊₁ = (axₙ + cₙ) / b
# ※a,bは定数 a = 31743 , b = 65536


# x *= a
scoreboard players operation $random global *= $MWCMultiplier const


# x += c
scoreboard players operation $random global += $MWCCarry global


# c = x (コピー)
scoreboard players operation $MWCCarry global = $random global


# x %= b
scoreboard players operation $random global %= $MWCBase const


# c /= b
scoreboard players operation $MWCCarry global /= $MWCBase const

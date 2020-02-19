# キャリー付き乗算乱数
# lag-1 MWC

# xₙ₊₁ = (mxₙ + cₙ) % b
# cₙ₊₁ = (mxₙ + cₙ) / b
# ※m,bは定数 m = 31743, b = 65536

# x *= a
scoreboard players operation $random global *= $rand_m const

# x += c
scoreboard players operation $random global += $rand_c global

# c = x (copy)
scoreboard players operation $rand_c global = $random global

# x %= b
scoreboard players operation $random global %= $rand_b const

# c /= b
scoreboard players operation $rand_c global /= $rand_b const
# キャリー付き乗算乱数
## lag-1 MWC

## xₙ₊₁ = (mxₙ + cₙ) % b
## cₙ₊₁ = (mxₙ + cₙ) / b
## ※m,bは定数 m = 31743, b = 65536

## x *= m
scoreboard players operation #x random *= #m random

## x += c
scoreboard players operation #x random += #c random

## c = x (copy)
scoreboard players operation #c random = #x random

## x %= b
scoreboard players operation #x random %= #b random

## c /= b
scoreboard players operation #c random /= #b random

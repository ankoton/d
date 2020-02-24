# キャリー付き乗算乱数
## lag-1 MWC

## xₙ₊₁ = (mxₙ + cₙ) % b
## cₙ₊₁ = (mxₙ + cₙ) / b
## ※m,bは定数 m = 31743, b = 65536

## initialize
scoreboard objectives add random dummy
scoreboard players set #m random 31743
scoreboard players set #b random 65536

## mx + c = gametime
## x = mx + c
execute store result score #x random run time query gametime

## c = x (copy)
scoreboard players operation #c random = #x random

## x %= b
scoreboard players operation #x random %= #b random

## c /= b
scoreboard players operation #c random /= #b random

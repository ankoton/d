
################################
# Tips表示
################################

# execute as @a


# calclate index of tips
function system:random/update
scoreboard players operation @s tips = $random global
scoreboard players operation @s tips %= $3 const

# show
execute if score @s tips matches 0 run tellraw @s ["",{"text":"[Tips] ","bold":"true"},{"text":"死ぬと死にます！"}]
execute if score @s tips matches 1 run tellraw @s ["",{"text":"[Tips] ","bold":"true"},{"text":"着地前にエンダーパールを投げることで落下ダメージを抑えられます！"}]
execute if score @s tips matches 2 run tellraw @s ["",{"text":"[Tips] ","bold":"true"},{"text":"§l岩盤§rや§lバリア§rに埋まると死んでしまうので注意！"}]

# initialize
scoreboard players reset @s tips

# プレイヤー初期化
## require:
##   execute as @a[tag=!initialized] run <this>

## increment
scoreboard players add #player_id global 1

## プレイヤー識別用idを設定
scoreboard players operation @s player_id = #player_id global

## 初期化終了フラグ
tag @s add initialized


# スコアボードがなければload_onceを実行
scoreboard objectives add const dummy {"text":"定数"}
execute unless score $0 const matches 0 run function main:load_once
tellraw @a[tag=admin] "[Server] Datapack Loaded."

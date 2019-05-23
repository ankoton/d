# 前提: scheduleコマンドによって実行される

# イベント持ちに対してイベントを発生させる
execute as @a[scores={event_id=0..}] at @s rotated as @s run function event:happen

# 毎tick実行
schedule function event:check 1t

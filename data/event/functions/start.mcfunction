
# 演出開始
worldborder warning distance 2147483647
execute as @a at @s run playsound minecraft:block.portal.travel master @s ~ ~100 ~ 10 0.5 1

# イベントを生成してプレイヤーに割り当て
execute as @a[gamemode=!creative,gamemode=!spectator] run function event:generate

# 説明:
#   「event:check」はscheduleコマンドによって毎tick実行されている。
#   また、scheduleコマンドで同じfunctionをスケジュールするとき、前のスケジュールを上書きする。
#   よって、以下のコマンド実行後から200tickの間、「event:check」は実行されなくなる。遅延の実現('-'v)
schedule function event:check 200t

# 10秒後に演出終了
schedule function event:finish 200t

# 嫌な予感イベントが終了するとどうなる？次の嫌な予感イベントが始まる。
schedule function event:start 72000t

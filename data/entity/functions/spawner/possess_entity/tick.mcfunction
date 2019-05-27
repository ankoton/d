# ブロックに憑依するカスタムスポナーの処理
# 前提: execute as @e[tag=spawner_possess_entity] at @s


# スポナーの動作
# 目の高さで動作させる(わかりやすいから。)
execute anchored eyes positioned ^ ^ ^ anchored feet run function entity:spawner/tick



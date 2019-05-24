

#execute as @a[nbt=!{SelectedItem:{}}] run scoreboard players set @s looking 0

# 実行者：プレイヤー　想定
#
# 実行後は"looking_at"タグのついたアマスタが現れる。
# 複数のプレイヤーが近くで同時に実行した場合にバグる可能性大

# ヘルパーアマスタ召喚
execute as @s at @s rotated as @s anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["looking_at_helper","garbage"]}
execute as @s at @s rotated as @s anchored eyes positioned ^ ^ ^ run tp @e[type=armor_stand,tag=looking_at_helper,distance=..1,sort=nearest,limit=1] ~ ~ ~ ~ ~

function utility:__detect_block_looking_at



# 終了後処理例
execute as @e[type=armor_stand,tag=looking_at,sort=nearest,limit=1] at @s run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:glass"},NoGravity:1b,Glowing:1b,Time:500,DropItem:0b}
#execute as @e[type=armor_stand,tag=looking_at,sort=nearest,limit=1] run kill @s



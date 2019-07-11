# Adv.フィールの経過処理

# require
#  execute as @e[tag=adv_fill,nbt={PortalCooldown:0}] at @s run function <this>


# load next name
data modify entity @s CustomName set from entity @s ArmorItems[0].tag.namelist[0]
data remove entity @s ArmorItems[0].tag.namelist[0]

# reset PortalCooldown
execute if data entity @s ArmorItems[0].tag.namelist[0] run data modify entity @s PortalCooldown set value 20

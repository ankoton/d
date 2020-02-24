me was damaged.

execute if entity @e[type=ender_pearl,distance=0] run tag @s add ender_pearl_invoked

execute if entity @s[tag=ender_pearl_invoked] as @e[type=ender_pearl,distance=0] run me invoked.

execute if entity @s[tag=resist_knockback,tag=!ender_pearl_invoked,scores={sneak_time=1..,onground=1}] run function skill:resist_knockback

tag @s remove ender_pearl_invoked

# data modify storage player:1 _.Pos set from entity @s Pos
advancement revoke @s only player:damaged
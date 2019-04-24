# (x1,y1,z1)と(x2,y2,z2)で囲まれた領域が全てairであるかどうか
# ただし、(x1≦x2 && y1≦y2 && z1≦z2)
# 参考: https://twitter.com/AiAkaishi/status/879296437216882688

# execute if block x1 y1 z1 minecraft:air
#   if blocks x1 y1 z1 (x2-1) y1 z1 (x1+1) y1 z1 all
#   if blocks x1 y1 z1 x2 (y2-1) z1 x1 (y1+1) z1 all
#   if blocks x1 y1 z1 x2 y2 (z2-1) x1 y1 (z1+1) all
#   run command

#例
#x1=64
#y1=10
#z1=51
#x2=68
#y2=14
#z2=55

# execute if block 64 10 51 air if blocks 64 10 51 67 10 51 65 10 51 all if blocks 64 10 51 68 13 51 64 11 51 all if blocks 64 10 51 68 14 54 64 10 52 all


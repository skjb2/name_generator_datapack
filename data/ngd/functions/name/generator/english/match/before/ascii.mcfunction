#递归 匹配字符
#execute if score #charBeforeErg ngdGlobal = #charBeforeRandom ngdGlobal run data get storage ngd:global temporary.name.characters.ascii.before[0]
#例如 我要列表[0] 遍历初始值为0 0=0取出 0+1=1 1>0则设置为0 因为先前版本只有在所有任务完成后才重置为0 导致 遍历器只增不减
#列表[4] a b c d e 0<4去a 1<4去b 2<4去c 3<4去d 4=4取e  4<=4所以运行函数 不然3<4去d就结束了
scoreboard players add #charBeforeErg ngdGlobal 0
execute if score #charBeforeErg ngdGlobal < #charBeforeRandom ngdGlobal run data remove storage ngd:global temporary.name.characters.ascii.before[0]
execute if score #charBeforeErg ngdGlobal = #charBeforeRandom ngdGlobal run data modify storage ngd:global temporary.name.generator.list append from storage ngd:global temporary.name.characters.ascii.before[0]
scoreboard players add #charBeforeErg ngdGlobal 1
execute if score #charBeforeErg ngdGlobal <= #charBeforeRandom ngdGlobal run function ngd:name/generator/english/match/before/ascii
execute if score #charBeforeErg ngdGlobal > #charBeforeRandom ngdGlobal run scoreboard players set #charBeforeErg ngdGlobal 0
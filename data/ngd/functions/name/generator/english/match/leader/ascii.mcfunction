#递归 匹配字符
scoreboard players add #charLeaderErg ngdGlobal 0
execute if score #charLeaderErg ngdGlobal < #charLeaderRandom ngdGlobal run data remove storage ngd:global temporary.name.characters.ascii.leader[0]
execute if score #charLeaderErg ngdGlobal = #charLeaderRandom ngdGlobal run data modify storage ngd:global temporary.name.generator.list append from storage ngd:global temporary.name.characters.ascii.leader[0]
scoreboard players add #charLeaderErg ngdGlobal 1
execute if score #charLeaderErg ngdGlobal <= #charLeaderRandom ngdGlobal run function ngd:name/generator/english/match/leader/ascii
execute if score #charLeaderErg ngdGlobal > #charLeaderRandom ngdGlobal run scoreboard players set #charLeaderErg ngdGlobal 0
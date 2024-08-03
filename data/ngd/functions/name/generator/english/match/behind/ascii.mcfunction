#递归 匹配字符behind
scoreboard players add #charBehindErg ngdGlobal 0
execute if score #charBehindErg ngdGlobal < #charBehindRandom ngdGlobal run data remove storage ngd:global temporary.name.characters.ascii.behind[0]
execute if score #charBehindErg ngdGlobal = #charBehindRandom ngdGlobal run data modify storage ngd:global temporary.name.generator.list append from storage ngd:global temporary.name.characters.ascii.behind[0]
scoreboard players add #charBehindErg ngdGlobal 1
execute if score #charBehindErg ngdGlobal <= #charBehindRandom ngdGlobal run function ngd:name/generator/english/match/behind/ascii
execute if score #charBehindErg ngdGlobal > #charBehindRandom ngdGlobal run scoreboard players set #charBehindErg ngdGlobal 0

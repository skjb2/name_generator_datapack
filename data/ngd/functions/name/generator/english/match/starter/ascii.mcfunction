#递归 匹配字符


execute if score #charStarterAddJudge ngdGlobal > $charStarterAddJudge ngdConfig run 

scoreboard players add #charStarterErg ngdGlobal 0
execute if score #charStarterErg ngdGlobal < #charStarterRandom ngdGlobal run data remove storage ngd:global temporary.name.characters.ascii.starter[0]
execute if score #charStarterErg ngdGlobal = #charStarterRandom ngdGlobal run data modify storage ngd:global temporary.name.generator.list insert 0 from storage ngd:global temporary.name.characters.ascii.starter[0]
scoreboard players add #charStarterErg ngdGlobal 1
execute if score #charStarterErg ngdGlobal <= #charStarterRandom ngdGlobal run function ngd:name/generator/english/match/starter/ascii
execute if score #charStarterErg ngdGlobal > #charStarterRandom ngdGlobal run scoreboard players set #charStarterErg ngdGlobal -1
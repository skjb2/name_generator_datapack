#递归 匹配字符
scoreboard players add #charPerErg ngdGlobal 0
execute if score #charPerErg ngdGlobal < #charPerRandom ngdGlobal run data remove storage ngd:global temporary.name.characters.unicode.chinese.per[0]
execute if score #charPerErg ngdGlobal = #charPerRandom ngdGlobal run data modify storage ngd:global temporary.name.generator.listper append from storage ngd:global temporary.name.characters.unicode.chinese.per[0]
scoreboard players add #charPerErg ngdGlobal 1
execute if score #charPerErg ngdGlobal <= #charPerRandom ngdGlobal run function ngd:name/generator/chinese/match/per/unicode
execute if score #charPerErg ngdGlobal > #charPerRandom ngdGlobal run scoreboard players set #charPerErg ngdGlobal 0
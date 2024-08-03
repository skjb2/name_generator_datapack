#递归 匹配字符
scoreboard players add #charSurErg ngdGlobal 0
execute if score #charSurErg ngdGlobal < #charSurRandom ngdGlobal run data remove storage ngd:global temporary.name.characters.unicode.chinese.sur[0]
execute if score #charSurErg ngdGlobal = #charSurRandom ngdGlobal run data modify storage ngd:global temporary.name.generator.listsur append from storage ngd:global temporary.name.characters.unicode.chinese.sur[0]
scoreboard players add #charSurErg ngdGlobal 1
execute if score #charSurErg ngdGlobal <= #charSurRandom ngdGlobal run function ngd:name/generator/chinese/match/sur/unicode
execute if score #charSurErg ngdGlobal > #charSurRandom ngdGlobal run scoreboard players set #charSurErg ngdGlobal 0
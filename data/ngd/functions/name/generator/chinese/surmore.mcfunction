#老样子 遍历器
scoreboard players add #surMoreExecuteTimes ngdGlobal 0

loot replace block 29999996 1 -1479 container.1 loot ngd:name/generator/chinese/char_sur_random
execute store result score #charSurRandom ngdGlobal run data get block 29999996 1 -1479 Items[1].tag.AttributeModifiers[0].Amount
data modify storage ngd:global temporary.name.characters.unicode.chinese.sur set from storage ngd:global config.characters.unicode.chinese.sur
#匹配
function ngd:name/generator/chinese/match/sur/unicode

scoreboard players add #surMoreExecuteTimes ngdGlobal 1
execute if score #surMoreExecuteTimes ngdGlobal < #charSurMRandom ngdGlobal run function ngd:name/generator/chinese/surmore
execute if score #surMoreExecuteTimes ngdGlobal >= #charSurMRandom ngdGlobal run scoreboard players set #surMoreExecuteTimes ngdGlobal -1
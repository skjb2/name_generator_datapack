#老样子 遍历器
scoreboard players add #perMoreExecuteTimes ngdGlobal 0

loot replace block 29999996 1 -1479 container.2 loot ngd:name/generator/chinese/char_per_random
execute store result score #charPerRandom ngdGlobal run data get block 29999996 1 -1479 Items[2].tag.AttributeModifiers[0].Amount
data modify storage ngd:global temporary.name.characters.unicode.chinese.per set from storage ngd:global config.characters.unicode.chinese.per
#匹配
function ngd:name/generator/chinese/match/per/unicode

scoreboard players add #perMoreExecuteTimes ngdGlobal 1
execute if score #perMoreExecuteTimes ngdGlobal < #charPerMRandom ngdGlobal run function ngd:name/generator/chinese/permore
execute if score #perMoreExecuteTimes ngdGlobal >= #charPerMRandom ngdGlobal run scoreboard players set #perMoreExecuteTimes ngdGlobal -1
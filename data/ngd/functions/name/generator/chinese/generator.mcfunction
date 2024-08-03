#####循环
#如果随机长度是0就给它一个随机数
scoreboard players add #nameLengthRanE ngdGlobal 0
execute if score #nameLengthRanE ngdGlobal matches 0 run function ngd:name/generator/chinese/random_number
#添加随机数sur姓 per名
loot replace block 29999996 1 -1479 container.1 loot ngd:name/generator/chinese/char_sur_random
execute store result score #charSurRandom ngdGlobal run data get block 29999996 1 -1479 Items[1].tag.AttributeModifiers[0].Amount
loot replace block 29999996 1 -1479 container.2 loot ngd:name/generator/chinese/char_per_random
execute store result score #charPerRandom ngdGlobal run data get block 29999996 1 -1479 Items[2].tag.AttributeModifiers[0].Amount
#复姓和复名增加数量

scoreboard players add $nameSurMoreMaxL ngdConfig 1
scoreboard players add $namePerMoreMaxL ngdConfig 1

loot replace block 29999996 1 -1479 container.3 loot ngd:name/generator/chinese/name_sur_more_random
execute store result score #charSurMRandom ngdGlobal run data get block 29999996 1 -1479 Items[3].tag.AttributeModifiers[0].Amount
loot replace block 29999996 1 -1479 container.4 loot ngd:name/generator/chinese/name_per_more_random
execute store result score #charPerMRandom ngdGlobal run data get block 29999996 1 -1479 Items[4].tag.AttributeModifiers[0].Amount

scoreboard players remove $nameSurMoreMaxL ngdConfig 1
scoreboard players remove $namePerMoreMaxL ngdConfig 1

#临时字符组
data modify storage ngd:global temporary.name.characters.unicode.chinese.sur set from storage ngd:global config.characters.unicode.chinese.sur
data modify storage ngd:global temporary.name.characters.unicode.chinese.per set from storage ngd:global config.characters.unicode.chinese.per

scoreboard players remove #charSurLLength ngdGlobal 1
scoreboard players remove #charPerLLength ngdGlobal 1

scoreboard players operation #charSurRandom ngdGlobal %= #charSurMoreDV ngdGlobal
scoreboard players operation #charPerRandom ngdGlobal %= #charPerMoreDV ngdGlobal

scoreboard players add #charSurLLength ngdGlobal 1
scoreboard players add #charPerLLength ngdGlobal 1


#文字分配与匹配
function ngd:name/generator/chinese/match/sur/unicode

execute if score #charSurMRandom ngdGlobal matches 1.. run execute if score #surMoreExecuteTimes ngdGlobal matches 0.. run function ngd:name/generator/chinese/surmore

function ngd:name/generator/chinese/match/per/unicode

execute if score #charPerMRandom ngdGlobal matches 1.. run execute if score #perMoreExecuteTimes ngdGlobal matches 0.. run function ngd:name/generator/chinese/permore

scoreboard players add #nameExecuteTimes ngdGlobal 1


execute if score #nameExecuteTimes ngdGlobal < #nameLengthRanE ngdGlobal run function ngd:name/generator/chinese/generator

execute if score #nameExecuteTimes ngdGlobal >= #nameLengthRanE ngdGlobal run function ngd:name/generator/chinese/reset
###########循环
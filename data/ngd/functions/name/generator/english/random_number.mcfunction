#随机数算法,name_length_random
loot replace block 29999996 1 -1477 container.0 loot ngd:name/generator/english/name_length_random
execute store result score #nameLengthRandom ngdGlobal run data get block 29999996 1 -1477 Items[0].tag.AttributeModifiers[0].Amount

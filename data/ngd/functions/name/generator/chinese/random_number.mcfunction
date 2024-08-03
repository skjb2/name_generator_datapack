#随机数算法
loot replace block 29999996 1 -1479 container.0 loot ngd:name/generator/chinese/char_length_random
execute store result score #nameLengthRanE ngdGlobal run data get block 29999996 1 -1479 Items[0].tag.AttributeModifiers[0].Amount
scoreboard players operation #nameLengthRanE ngdGlobal %= $nameLengthMiE ngdConfig

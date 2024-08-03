function ngd:name/generator/english/reset

#如果字符过多就删减掉一部分
loot replace block 29999996 1 -1477 container.8 loot ngd:name/generator/english/name_length_limited_random
execute store result score #nameLLimitedRandom ngdGlobal run data get block 29999996 1 -1477 Items[8].tag.AttributeModifiers[0].Amount

execute store result score #nameLengths ngdGlobal run data get storage ngd:global temporary.name.generator.list
execute if score #nameLengths ngdGlobal > #nameLLimitedRandom ngdGlobal run function ngd:name/generator/english/length_reduce
#首字母大写
function ngd:name/generator/english/capitalize




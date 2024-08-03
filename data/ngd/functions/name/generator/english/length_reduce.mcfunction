execute if score #nameLengths ngdGlobal > #nameLLimitedRandom ngdGlobal run data remove storage ngd:global temporary.name.generator.list[-1]
execute store result score #nameLengths ngdGlobal run data get storage ngd:global temporary.name.generator.list
execute if score #nameLengths ngdGlobal > #nameLLimitedRandom ngdGlobal run function ngd:name/generator/english/length_reduce



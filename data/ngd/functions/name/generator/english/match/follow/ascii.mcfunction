#递归 匹配字符
scoreboard players add #charFollowErg ngdGlobal 0
execute if score #charFollowErg ngdGlobal < #charFollowRandom ngdGlobal run data remove storage ngd:global temporary.name.characters.ascii.follow[0]
execute if score #charFollowErg ngdGlobal = #charFollowRandom ngdGlobal run data modify storage ngd:global temporary.name.generator.list append from storage ngd:global temporary.name.characters.ascii.follow[0]
scoreboard players add #charFollowErg ngdGlobal 1
execute if score #charFollowErg ngdGlobal <= #charFollowRandom ngdGlobal run function ngd:name/generator/english/match/follow/ascii
execute if score #charFollowErg ngdGlobal > #charFollowRandom ngdGlobal run scoreboard players set #charFollowErg ngdGlobal 0
#####循环
#名字长度大致范围
#如果随机长度是0就给它一个随机数
scoreboard players add #nameLengthRandom ngdGlobal 0
execute if score #nameLengthRandom ngdGlobal matches 0 run function ngd:name/generator/english/random_number
#添加随机数
loot replace block 29999996 1 -1477 container.1 loot ngd:name/generator/english/char_before_random
execute store result score #charBeforeRandom ngdGlobal run data get block 29999996 1 -1477 Items[1].tag.AttributeModifiers[0].Amount
loot replace block 29999996 1 -1477 container.2 loot ngd:name/generator/english/char_behind_random
execute store result score #charBehindRandom ngdGlobal run data get block 29999996 1 -1477 Items[2].tag.AttributeModifiers[0].Amount
loot replace block 29999996 1 -1477 container.3 loot ngd:name/generator/english/char_leader_random
execute store result score #charLeaderRandom ngdGlobal run data get block 29999996 1 -1477 Items[3].tag.AttributeModifiers[0].Amount
loot replace block 29999996 1 -1477 container.4 loot ngd:name/generator/english/char_follow_random
execute store result score #charFollowRandom ngdGlobal run data get block 29999996 1 -1477 Items[4].tag.AttributeModifiers[0].Amount
#starter
loot replace block 29999996 1 -1477 container.3 loot ngd:name/generator/english/char_leader_random
execute store result score #charStarterRandom ngdGlobal run data get block 29999996 1 -1477 Items[3].tag.AttributeModifiers[0].Amount
#权重判定
loot replace block 29999996 1 -1477 container.5 loot ngd:name/generator/english/char_leader_add_judge
execute store result score #charLeaderAddJudge ngdGlobal run data get block 29999996 1 -1477 Items[5].tag.AttributeModifiers[0].Amount
loot replace block 29999996 1 -1477 container.6 loot ngd:name/generator/english/char_follow_add_judge
execute store result score #charFollowAddJudge ngdGlobal run data get block 29999996 1 -1477 Items[6].tag.AttributeModifiers[0].Amount
loot replace block 29999996 1 -1477 container.7 loot ngd:name/generator/english/char_starter_add_judge
execute store result score #charStarterAddJudge ngdGlobal run data get block 29999996 1 -1477 Items[7].tag.AttributeModifiers[0].Amount


#临时字符组,用完就扔
data modify storage ngd:global temporary.name.characters.ascii.before set from storage ngd:global config.characters.ascii.before
data modify storage ngd:global temporary.name.characters.ascii.behind set from storage ngd:global config.characters.ascii.behind
data modify storage ngd:global temporary.name.characters.ascii.leader set from storage ngd:global config.characters.ascii.leader
data modify storage ngd:global temporary.name.characters.ascii.follow set from storage ngd:global config.characters.ascii.follow
data modify storage ngd:global temporary.name.characters.ascii.starter set from storage ngd:global config.characters.ascii.leader

#new
scoreboard players remove #charBeforeLLength ngdGlobal 1
scoreboard players remove #charBehindLLength ngdGlobal 1
scoreboard players remove #charLeaderLLength ngdGlobal 1
scoreboard players remove #charFollowLLength ngdGlobal 1
scoreboard players remove #charRareLLength ngdGlobal 1
scoreboard players operation #charBeforeRandom ngdGlobal %= #charBeforeLLength ngdGlobal
scoreboard players operation #charBehindRandom ngdGlobal %= #charBehindLLength ngdGlobal

scoreboard players add #charBeforeLLength ngdGlobal 1
scoreboard players add #charBehindLLength ngdGlobal 1
scoreboard players add #charLeaderLLength ngdGlobal 1
scoreboard players add #charFollowLLength ngdGlobal 1
scoreboard players add #charRareLLength ngdGlobal 1

#文字分配与匹配
function ngd:name/generator/english/match/before/ascii
function ngd:name/generator/english/match/behind/ascii
execute if score #charLeaderAddJudge ngdGlobal > $charLeaderAddJudge ngdConfig run function ngd:name/generator/english/match/leader/ascii
execute if score #charLeaderAddJudge ngdGlobal <= $charLeaderAddJudge ngdConfig run execute if score #charFollowAddJudge ngdGlobal > $charFollowAddJudge ngdConfig run function ngd:name/generator/english/match/follow/ascii

scoreboard players add #charStarterErg ngdGlobal 0
execute if score #charStarterAddJudge ngdGlobal > $charStarterAddJudge ngdConfig run execute if score #charStarterErg ngdGlobal matches 0 run function ngd:name/generator/english/match/starter/ascii

scoreboard players add #nameExecuteTimes ngdGlobal 1

#必须是<= 例如 如果是1的话 0+1=1 1<1不执行了(无考证 随意 主要是match里面两个ascii那个必须重置为0
execute if score #nameExecuteTimes ngdGlobal < #nameLengthRandom ngdGlobal run function ngd:name/generator/english/generator

execute if score #nameExecuteTimes ngdGlobal >= #nameLengthRandom ngdGlobal run function ngd:name/generator/english/generator_next
###########循环

#data modify storage ngd:global temporary.name.generator.list set value []
#data modify storage ngd:global temporary.name.generator.list append from storage ngd:global config.characters.ascii.before
#data modify storage ngd:global temporary.name.generator.list set value []
#scoreboard players set #nameLengthRandom ngdGlobal 0
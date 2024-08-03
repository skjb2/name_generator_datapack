#全局设定 d是datapack缩写 为了防冲突
scoreboard objectives add ngdConfig dummy
scoreboard objectives add ngdGlobal dummy
#生成随机名字的长度 注意 这个只适用于西方以英文为基础的名字 且长度不会严格控制在该范围内
#for the western name
scoreboard players set $nameLengthMin ngdConfig 3
scoreboard players set $nameLengthMax ngdConfig 8

#严格控制长度 名字长度一定小于$nameLengthMMax 【可修改】
#control the name length, the name length < $nameLengthMMax [Can Modify]
scoreboard players set $nameLengthMMin ngdConfig 5
scoreboard players set $nameLengthMMax ngdConfig 12

#权重判定 范围 0-100
scoreboard players set $charLeaderAddJudge ngdConfig 70
scoreboard players set $charFollowAddJudge ngdConfig 70
scoreboard players set $charStarterAddJudge ngdConfig 90
###############################################################
#生成随机名字的长度 适用于东南亚
#for the eastern name
#不建议修改
scoreboard players set $nameLengthMiE ngdConfig 1
scoreboard players set $nameLengthMaE ngdConfig 2
scoreboard players set $nameLengthMMiE ngdConfig 2
scoreboard players set $nameLengthMMaE ngdConfig 4

#是否存在复姓和复名 默认都有
scoreboard players set $nameSurMoreJudge ngdConfig 1
scoreboard players set $namePerMoreJudge ngdConfig 1

#复姓 复名最大<增加>限制 【可修改】
#the max words add to the personal name and surname [Can Modify]
scoreboard players set $nameSurMoreMaxL ngdConfig 1
scoreboard players set $namePerMoreMaxL ngdConfig 2

#复姓 复名最小<增加>限制 【可修改】
#the min words add to the personal name and surname [Can Modify]
scoreboard players set $nameSurMoreMinL ngdConfig 0
scoreboard players set $namePerMoreMinL ngdConfig 0
###################################################################

#存储
#语言 language
data modify storage ngd:global config.name.lang set value "chinese"
#data modify storage ngd:global config.name.lang set value "english"
data modify storage ngd:global temporary.name.generator.list set value []


function ngd:game/storage




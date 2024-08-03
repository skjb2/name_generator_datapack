#7月13日晚上4小时到10点创建概念模型
#7月14日约7点润色完成最终模型 9点规范文件路径
#原路径entity/folk/name_generator
#现路径name/generator/english
#
#英文要整两次 text1是名字 text2是姓氏
#
scoreboard players set #charStarterErg ngdGlobal 0
data modify storage ngd:global temporary.name.generator.list set value []
function ngd:game/storage
function ngd:name/generator/english/generator
data modify block 29999997 1 -1477 Text1 set value ''
data modify block 29999997 1 -1477 Text1 set value '[{"nbt":"temporary.name.generator.list","storage":"ngd:global","interpret":true,"color":"blue","italic":false}]'

scoreboard players set #charStarterErg ngdGlobal 0
data modify storage ngd:global temporary.name.generator.list set value []
function ngd:game/storage
function ngd:name/generator/english/generator
data modify block 29999997 1 -1477 Text2 set value ''
data modify block 29999997 1 -1477 Text2 set value '[{"nbt":"temporary.name.generator.list","storage":"ngd:global","interpret":true,"color":"blue","italic":false}]'
######合并名字
data modify block 29999997 1 -1477 Text3 set value '[{"nbt":"Text1","block":"29999997 1 -1477","interpret":true,"color":"yellow"},{"text":" "},{"nbt":"Text2","block":"29999997 1 -1477","interpret":true,"color":"yellow"}]'
#############################

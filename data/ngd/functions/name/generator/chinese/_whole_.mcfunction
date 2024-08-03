scoreboard players set #charStarterErg ngdGlobal 0
data modify storage ngd:global temporary.name.generator.listsur set value []
data modify storage ngd:global temporary.name.generator.listper set value []
function ngd:game/storage
function ngd:name/generator/chinese/generator
data modify block 29999997 1 -1479 Text1 set value ''
data modify block 29999997 1 -1479 Text1 set value '[{"nbt":"temporary.name.generator.listsur","storage":"ngd:global","interpret":true,"color":"blue","italic":false}]'

data modify block 29999997 1 -1479 Text2 set value ''
data modify block 29999997 1 -1479 Text2 set value '[{"nbt":"temporary.name.generator.listper","storage":"ngd:global","interpret":true,"color":"blue","italic":false}]'
######合并名字
data modify block 29999997 1 -1479 Text3 set value '[{"nbt":"Text1","block":"29999997 1 -1479","interpret":true,"color":"yellow"},{"text":""},{"nbt":"Text2","block":"29999997 1 -1479","interpret":true,"color":"yellow"}]'
#############################

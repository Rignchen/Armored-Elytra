#execute as player at marker when use the crafter (> elytrarmor/function/action/use_wrench)

#how many items is there
execute store result score #temp ely_set run data get block ~ ~ ~ Items

#plugins?
function #elytrarmor:use_wrench

#craft
execute unless entity @s[tag=elytrarmor_dont] if score #temp ely_set matches 1 if data block ~ ~ ~ Items[{id:"minecraft:elytra"}] unless data block ~ ~ ~ Items[{id:"minecraft:elytra",tag:{Tags:["armored"]}}] run function elytrarmor:action/craft

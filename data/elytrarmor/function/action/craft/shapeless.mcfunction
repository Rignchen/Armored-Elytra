## function elytrarmor:action/craft/smithed_shapeless

execute if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:elytra"},{id:"minecraft:leather_chestplate"}]} run function elytrarmor:action/craft/leather
execute if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:elytra"},{id:"minecraft:chainmail_chestplate"}]} run function elytrarmor:action/craft/chain
execute if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:elytra"},{id:"minecraft:iron_chestplate"}]} run function elytrarmor:action/craft/iron
execute if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:elytra"},{id:"minecraft:golden_chestplate"}]} run function elytrarmor:action/craft/gold
execute if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:elytra"},{id:"minecraft:diamond_chestplate"}]} run function elytrarmor:action/craft/diamond
execute if entity @s[scores={smithed.data=0}] if data storage smithed.crafter:main root.temp{shapeless_crafting_input:[{id:"minecraft:elytra"},{id:"minecraft:netherite_chestplate"}]} run function elytrarmor:action/craft/netherite

#execute as player at marker when craft elytra (> elytrarmor/function/action/crafter)
#only run if elytra in the crafter

#crafts
execute if data block ~ ~ ~ Items[{id:"minecraft:leather_chestplate"}] run function elytrarmor:action/craft/leather
execute if data block ~ ~ ~ Items[{id:"minecraft:chainmail_chestplate"}] run function elytrarmor:action/craft/chain
execute if data block ~ ~ ~ Items[{id:"minecraft:iron_chestplate"}] run function elytrarmor:action/craft/iron
execute if data block ~ ~ ~ Items[{id:"minecraft:golden_chestplate"}] run function elytrarmor:action/craft/gold
execute if data block ~ ~ ~ Items[{id:"minecraft:diamond_chestplate"}] run function elytrarmor:action/craft/diamond
execute if data block ~ ~ ~ Items[{id:"minecraft:netherite_chestplate"}] run function elytrarmor:action/craft/netherite

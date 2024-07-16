##function #smithed.crafter:event/shapeless_recipes

#plugins?
execute if entity @s[scores={smithed.data=0}] run function #elytrarmor:crafting_table

execute if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 unless data block ~ ~ ~ Items[3] unless data block ~ ~ ~ Items[{id:"minecraft:elytra", components:{"minecraft:custom_data":{"elytrarmor_data":["armored"]}}}] run function elytrarmor:action/craft/shapeless

## function elytrarmor:action/craft/smithed_shapeless

# Put into the storage
data modify storage elytrarmor:data armor set from block ~ ~ ~ Items[{id:"minecraft:diamond_chestplate"}].components

# Start of the craft
function elytrarmor:action/craft/craft_start

# Data
execute unless data storage elytrarmor:data armor.minecraft:item_name run data modify storage elytrarmor:data armor.minecraft:item_name set value '{"text":"Diamond Elytra"}'
execute unless data storage elytrarmor:data armor.minecraft:attribute_modifiers run data modify storage elytrarmor:data armor.minecraft:attribute_modifiers merge value [{type:"generic.armor", slot:"chest", amount:8, operation:"add_value", id:"diamond_elytra.armor"},{type:"generic.armor_toughness", slot:"chest", amount:2, operation:"add_value", id:"diamond_elytra.armor_toughness"}]
execute unless data storage elytrarmor:data armor.minecraft:max_damage run data modify storage elytrarmor:data armor.minecraft:max_damage set value 528
data modify storage elytrarmor:data armor.minecraft:lore append value '{"text":"Diamond Elytra","italic":false, "color":"gray"}'
data modify storage elytrarmor:data armor.minecraft:custom_model_data set value 537295

# End of the craft
function elytrarmor:action/craft/craft_end

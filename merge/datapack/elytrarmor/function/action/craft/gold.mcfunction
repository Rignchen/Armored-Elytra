## function elytrarmor:action/craft/smithed_shapeless

# Put into the storage
data modify storage elytrarmor:data armor set from block ~ ~ ~ Items[{id:"minecraft:golden_chestplate"}].components

# Start of the craft
function elytrarmor:action/craft/craft_start

# Data
execute unless data storage elytrarmor:data armor.minecraft:item_name run data modify storage elytrarmor:data armor.minecraft:item_name set value '{"text":"Golden Elytra"}'
execute unless data storage elytrarmor:data armor.minecraft:attribute_modifiers run data modify storage elytrarmor:data armor.minecraft:attribute_modifiers merge value [{type:"generic.armor", slot:"chest", amount:5, operation:"add_value", id:golden_elytra}]
execute unless data storage elytrarmor:data armor.minecraft:max_damage run data modify storage elytrarmor:data armor.minecraft:max_damage set value 112
execute if data storage elytrarmor:data armor.minecraft:max_damage run data modify storage elytrarmor:data armor.minecraft:max_damage set value 112
data modify storage elytrarmor:data armor.minecraft:lore append value '{"text":"Golden Elytra","italic":false, "color":"gray"}'
data modify storage elytrarmor:data armor.minecraft:custom_model_data set value 537294
data modify storage elytrarmor:data armor.minecraft:custom_data:elytrarmor_data append value "piglin"

# End of the craft
function elytrarmor:action/craft/craft_end

## function elytrarmor:action/craft/smithed_shapeless

# Put into the storage
data modify storage elytrarmor:data armor set from block ~ ~ ~ Items[{id:"minecraft:iron_chestplate"}].components

# Start of the craft
function elytrarmor:action/craft/craft_start

# Data
execute unless data storage elytrarmor:data armor.minecraft:item_name run data modify storage elytrarmor:data armor.minecraft:item_name set value '{"text":"Iron Elytra"}'
execute unless data storage elytrarmor:data armor.minecraft:attribute_modifiers run data modify storage elytrarmor:data armor.attribute_modifiers merge value [{type:"generic.armor", slot:"chest", amount:6,operation:"add_value", id:"iron_elytra"}]
execute unless data storage elytrarmor:data armor.minecraft:max_damage run data modify storage elytrarmor:data armor.minecraft:max_damage set value 240
data modify storage elytrarmor:data armor.minecraft:lore append value '{"text":"Iron Elytra","italic":false, "color":"gray"}'
data modify storage elytrarmor:data armor.minecraft:custom_model_data set value 537293

# End of the craft
function elytrarmor:action/craft/craft_end

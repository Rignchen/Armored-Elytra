## function elytrarmor:action/craft/smithed_shapeless

# Put into the storage
data modify storage elytrarmor:data armor set from block ~ ~ ~ Items[{id:"minecraft:netherite_chestplate"}].components

# Start of the craft
function elytrarmor:action/craft/craft_start

# Data
execute unless data storage elytrarmor:data armor.minecraft:item_name run data modify storage elytrarmor:data armor.minecraft:item_name set value '{"text":"Netherite Elytra"}'
execute unless data storage elytrarmor:data armor.minecraft:attribute_modifiers run data modify storage elytrarmor:data armor.minecraft:attribute_modifiers merge value [{type:"generic.armor", slot:"chest", amount:8, operation:"add_value", id:"netherite_elytra.armor"}, {type:"generic.armor_toughness", slot:"chest", amount:3, operation:"add_value", id:"netherite_elytra.armor_toughness"}, {type:"generic.knockback_resistance", slot:"chest", amount:0.1, operation:"add_value", id:"netherite_armor.knockback_resistance"}]
execute unless data storage elytrarmor:data armor.minecraft:max_damage run data modify storage elytrarmor:data armor.minecraft:max_damage set value 592
data modify storage elytrarmor:data armor.minecraft:attribute_modifiers set value 537296
data modify storage elytrarmor:data armor.minecraft:custom_data.elytrarmor_data append value "unbreak"

# End of the craft
function elytrarmor:action/craft/craft_end

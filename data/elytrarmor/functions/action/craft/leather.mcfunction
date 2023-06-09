## function elytrarmor:action/craft/smithed_shapeless

# Put into the storage
data modify storage elytrarmor:data armor set from block ~ ~ ~ Items[{id:"minecraft:leather_chestplate"}].tag

# Start of the craft
function elytrarmor:action/craft/craft_start

# Data
execute unless data storage elytrarmor:data armor.display.Name run data modify storage elytrarmor:data armor.display.Name set value '{"text":"Leather Elytra","italic":false}'
execute unless data storage elytrarmor:data armor.AttributeModifiers run data modify storage elytrarmor:data armor.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-1502880662,165364280,-1338453509,-1199027486],Slot:"chest"}]
data modify storage elytrarmor:data armor.CustomModelData set value 537291

# End of the craft
function elytrarmor:action/craft/craft_end

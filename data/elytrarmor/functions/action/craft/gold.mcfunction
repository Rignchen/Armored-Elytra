## function elytrarmor:action/craft/smithed_shapeless

# Put into the storage
data modify storage elytrarmor:data armor set from block ~ ~ ~ Items[{id:"minecraft:golden_chestplate"}].tag

# Start of the craft
function elytrarmor:action/craft/craft_start

# Data
execute unless data storage elytrarmor:data armor.display.Name run data modify storage elytrarmor:data armor.display.Name set value '{"text":"Golden Elytra","italic":false}'
execute unless data storage elytrarmor:data armor.AttributeModifiers run data modify storage elytrarmor:data armor.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-1502880662,165364280,-1338453509,-1199027486],Slot:"chest"}]
data modify storage elytrarmor:data armor.CustomModelData set value 537294
data modify storage elytrarmor:data armor.Tags append value "piglin"

# End of the craft
function elytrarmor:action/craft/craft_end

#execute as player at crafter when craft netherite elytra (> elytrarmor/function/action/craft)

#plugin
function #elytrarmor:craft

#put into the storage
data modify storage elytrarmor elytra set from block ~ ~ ~ Items[{id:"minecraft:netherite_chestplate"}].tag

#remove the armor
data remove block ~ ~ ~ Items[{id:"minecraft:netherite_chestplate"}]

#data
execute unless data storage elytrarmor elytra.display.Name run data modify storage elytrarmor elytra.display.Name set value '{"text":"Netherite Elytra","italic":false}'
execute unless data storage elytrarmor elytra.AttributeModifiers run data modify storage elytrarmor elytra.AttributeModifiers set value [{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;-1502880662,165364280,-1338453509,-1199027486],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-1502880662,165364280,-1338453509,-1199027486],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1502880662,165364280,-1338453509,-1199027486],Slot:"chest"}]
data modify storage elytrarmor elytra.Tags append value "armored"
data modify storage elytrarmor elytra.Tags append value "unbreak"
data modify storage elytrarmor elytra.CustomModelData set value 537296

#put elytra back in the crafter
data modify block ~ ~ ~ Items[{id:"minecraft:elytra"}].tag set from storage elytrarmor elytra

#sound
playsound block.anvil.use block @a[distance=..20]

#plugin
function #elytrarmor:crafted
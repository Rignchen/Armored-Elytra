
#put the elytra in the storage
data modify storage elytrarmor elytra set from entity @s Inventory[{Slot:102b}]

#reset the elytra
data remove storage elytrarmor elytra.tag.CustomModelData
data remove storage elytrarmor elytra.tag.Enchantments
data remove storage elytrarmor elytra.tag.display
data remove storage elytrarmor elytra.tag.AttributeModifiers
data remove storage elytrarmor elytra.tag.Tags

#put the elytra back
summon item_frame ~ ~ ~ {UUID:[I;997275056,-1263320765,-1403232826,-334258573]}
data modify entity 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73 Item set from storage elytrarmor elytra
item replace entity @s armor.chest from entity 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73 container.0
kill 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73
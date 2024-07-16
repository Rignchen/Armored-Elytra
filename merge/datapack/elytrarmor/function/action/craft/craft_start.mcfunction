## function elytrarmor:action/craft/leather

# Lock the next crafts
scoreboard players set @s smithed.data 1

# Put into the storage
data modify storage elytrarmor:data elytra set from block ~ ~ ~ Items[{id:"minecraft:elytra"}]

# Plugins?
function #elytrarmor:craft

# Modif on all craft
execute unless data storage elytrarmor:data {elytra:{components:{"minecraft:damage":0}}} run data modify storage elytrarmor:data armor.components.minecraft:damage set from storage elytrarmor:data elytra.components.minecraft:damage
data modify storage elytrarmor:data armor.minecraft:custom_data.elytrarmor_data append value "armored"

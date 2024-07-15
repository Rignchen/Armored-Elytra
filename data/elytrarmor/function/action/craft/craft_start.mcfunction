## function elytrarmor:action/craft/leather

# Lock the next crafts
scoreboard players set @s smithed.data 1

# Put into the storage
data modify storage elytrarmor:data elytra set from block ~ ~ ~ Items[{id:"minecraft:elytra"}].tag

# Plugins?
function #elytrarmor:craft

# Modif on all craft
execute unless data storage elytrarmor:data {elytra:{Damage:0}} run data modify storage elytrarmor:data armor.Damage set from storage elytrarmor:data elytra.Damage
data modify storage elytrarmor:data armor.Tags append value "armored"

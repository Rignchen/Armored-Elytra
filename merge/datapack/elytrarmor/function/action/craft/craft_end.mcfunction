## function elytrarmor:action/craft/leather

# Put elytra back in the crafter
item replace block ~ ~ ~ container.16 with elytra
data modify block ~ ~ ~ Items[{Slot:16}].components set from storage elytrarmor:data elytrarmor

# Plugins?
function #elytrarmor:crafted

# Empty storages
data remove storage elytrarmor:data elytra
data remove storage elytrarmor:data armor

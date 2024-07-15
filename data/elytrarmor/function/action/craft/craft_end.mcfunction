## function elytrarmor:action/craft/leather

# Put elytra back in the crafter
item replace block ~ ~ ~ container.16 with elytra
item modify block ~ ~ ~ container.16 elytrarmor:place_in_elytra

# Plugins?
function #elytrarmor:crafted

# Empty storages
data remove storage elytrarmor:data elytra
data remove storage elytrarmor:data armor

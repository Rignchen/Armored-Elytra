#execute as at player when he dies (> elytrarmor/advancement/utilities/inventory_unbreak) 

#make reusable
advancement revoke @s only elytrarmor:utilities/inventory_unbreak

#make the item invulnerable
execute if score #unbreak ely_set matches 1 anchored eyes as @e[type=item,distance=..2,predicate=elytrarmor:unbreak] run data modify entity @s Invulnerable set value 1b

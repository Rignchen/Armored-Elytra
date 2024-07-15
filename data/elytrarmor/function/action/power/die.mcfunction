#execute as at player when he dies (> elytrarmor/advancement/use/die) 

#make reusable
advancement revoke @s only elytrarmor:use/die

#make the item invulnerable
execute if score #unbreak ely_set matches 1 as @e[type=item,distance=..2,predicate=elytrarmor:unbreak] run data modify entity @s Invulnerable set value 1b
#remove piglin mark
execute if entity @s[tag=elytrarmor_pig] run function elytrarmor:action/power/piglin_remove
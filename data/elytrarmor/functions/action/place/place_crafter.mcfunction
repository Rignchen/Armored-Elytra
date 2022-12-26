#execute as at player when he place the crafter (> elytrarmor/advancement/use/place_crafter)

#make reusable
advancement revoke @s only elytrarmor:use/place_crafter
#place the crafter
execute as @e[type=marker,distance=..10,tag=elytrarmor_crafter_place] at @s run function elytrarmor:action/place/placing_crafter
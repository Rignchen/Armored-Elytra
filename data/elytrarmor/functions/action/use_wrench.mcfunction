#execute as at player when he craft new elytra

#make reusable
advancement revoke @s only elytrarmor:use/use_wrench

#try the crafts
execute at @e[type=marker,distance=..7,tag=elytrarmor_crafter,limit=1] run function elytrarmor:action/crafter
tag @s remove elytrarmor_dont

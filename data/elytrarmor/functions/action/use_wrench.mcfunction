#execute as at player when he craft new elytra

#make reusable
advancement revoke @s only elytrarmor:use/use_wrench

#plugins?
execute at @e[type=marker,distance=..10,tag=elytrarmor_crafter] run function #elytrarmor:use_wrench

#try the crafts
execute unless entity @s[tag=elytrarmor_dont] at @e[type=marker,distance=..10,tag=elytrarmor_crafter] unless data block ~ ~ ~ Items[2] if data block ~ ~ ~ Items[{id:"minecraft:elytra"}] unless data block ~ ~ ~ Items[{id:"minecraft:elytra",tag:{Tags:["armored"]}}] run function elytrarmor:action/craft
tag @s remove elytrarmor_dont

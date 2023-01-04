#executed as at player when he craft the crafter (> elytrarmor/advancement/craft/crafter)

#make reusable
advancement revoke @s only elytrarmor:craft/crafter
recipe take @s elytrarmor:crafter

#change the item
clear @s knowledge_book 1
give @s pig_spawn_egg{elytrarmor:1b,CustomModelData:53729,display:{Name:'{"text": "Elytra Sewing Machine","italic": false}'},EntityTag:{id:"minecraft:marker",Tags:["elytrarmor_crafter_place","elytrarmor_crafter"]}}

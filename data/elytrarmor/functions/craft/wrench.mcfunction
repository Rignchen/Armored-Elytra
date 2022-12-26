#executed as at player when he craft the wrench (> elytrarmor/advancement/craft/wrench)

#make reusable
advancement revoke @s only elytrarmor:craft/wrench
recipe take @s elytrarmor:wrench

#change the item
clear @s knowledge_book 1
give @s stick{elytrarmor:1b,CustomModelData:818,display:{Name:'{"text": "Wrench","italic": false}'}}

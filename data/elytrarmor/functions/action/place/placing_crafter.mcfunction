#execute as at marker when a player place the crafter (> elytrarmor/function/action/place/place_crafter)

#don't run 2 times
tag @s remove elytrarmor_crafter_place

#reposition
execute align xyz run tp ~.5 ~.5 ~.5

#place the crafter
setblock ~ ~ ~ dropper{CustomName:'{"text": "Elytra Sewing Machine","italic": false,"color": "black"}'}
summon glow_item_frame ~ ~ ~ {Item:{id:"pig_spawn_egg",Count:1b,tag:{CustomModelData:53729}},Fixed:1b,Facing:1b,Tags:["elytrarmor_crafter"]}

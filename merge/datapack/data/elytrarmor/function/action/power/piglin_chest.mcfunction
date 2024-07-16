#execute as at player when he put on elytra (> elytrarmor/advancement/use/piglin)

#make reusable
advancement revoke @s only elytrarmor:use/unpiglin

#give tag + team
execute if score #piglin ely_set matches 1 run function elytrarmor:action/power/piglin_add
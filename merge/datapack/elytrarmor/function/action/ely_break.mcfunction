
#make reusable
advancement revoke @s only elytrarmor:use/elytra_break

execute if score #break ely_set matches 1 run function elytrarmor:action/ely_breaking

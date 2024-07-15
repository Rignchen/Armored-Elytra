#execute as at server when reload (> elytrarmor/function/load)
#self call every seconds

execute at @a[tag=elytrarmor_pig] as @e[type=piglin,distance=..20,tag=!elytrarmor_pig] run function elytrarmor:action/power/piglin_add

#self call
execute if score #piglin ely_set matches 1 run schedule function elytrarmor:action/power/piglin_schedule 1s

#execute as at server when reload (> elytrarmor/function/load)
#self call every seconds

#break crafter
execute as @e[type=marker,tag=elytrarmor_crafter,predicate=!elytrarmor:crafter_pos] at @s run function elytrarmor:action/place/break

#self call
schedule function elytrarmor:action/place/break_schedule 4t
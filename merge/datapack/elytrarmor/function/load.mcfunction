#execute when reload (> minecraft/tags/function/load)

#scores
scoreboard objectives add ely_set dummy "Armored Elytra Settings"
#settings
function elytrarmor:_settings
#team
team add piglin
execute if score #piglin ely_set matches 0 as @e[type=piglin,tag=elytrarmor_pig] run function elytrarmor:action/power/piglin_remove
execute if score #piglin ely_set matches 0 as @a[tag=elytrarmor_pig] run function elytrarmor:action/power/piglin_remove
#schedule
function elytrarmor:action/power/piglin_schedule

#define storage elytrarmor:data 
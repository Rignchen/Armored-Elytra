#execute when reload (> minecraft/tags/function/load)

#scores
scoreboard objectives add ely_set dummy "Armored Elytra Settings"
#settings
function elytrarmor:.settings
#team
team add piglin
#schedule
function elytrarmor:action/power/piglin_schedule
function elytrarmor:action/place/break_schedule

## manualy runed by the player

#scores
scoreboard objectives remove ely_set
#settings
function elytrarmor:.settings
#team
team remove piglin
#schedule
schedule clear elytrarmor:action/power/piglin_schedule
#tags
tag @e[type=piglin,tag=elytrarmor_pig] remove elytrarmor_pig
tag @a[tag=elytrarmor_pig] remove elytrarmor_pig

tellraw @s [{"text": "[Armored Elytra]:","color": "green"},{"text": "The datapack has succesfully been uninstall","color": "white"}]
datapack disable "file/Armored Elytra.zip"
datapack disable "file/Armored Elytra"

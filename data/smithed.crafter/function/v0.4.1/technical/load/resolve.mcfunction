schedule clear smithed.crafter:v0.4.1/technical/tick
execute if score #smithed.crafter.major load.status matches 0 if score #smithed.crafter.minor load.status matches 4 if score #smithed.crafter.patch load.status matches 1 run function smithed.crafter:v0.4.1/technical/load

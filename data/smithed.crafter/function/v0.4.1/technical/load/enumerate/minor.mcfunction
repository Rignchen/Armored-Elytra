execute if score #smithed.crafter.minor load.status matches ..4 unless score #smithed.crafter.minor load.status matches 4 run function smithed.crafter:v0.4.1/technical/load/enumerate/set_version
execute unless score #smithed.crafter.set load.status matches 1 if score #smithed.crafter.minor load.status matches ..4 if score #smithed.crafter.minor load.status matches 4 run function smithed.crafter:v0.4.1/technical/load/enumerate/patch

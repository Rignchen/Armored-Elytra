schedule clear smithed.custom_block:v0.4.1/technical/tick
execute if score #smithed.custom_block.major load.status matches 0 if score #smithed.custom_block.minor load.status matches 4 if score #smithed.custom_block.patch load.status matches 1 run function smithed.custom_block:v0.4.1/technical/load

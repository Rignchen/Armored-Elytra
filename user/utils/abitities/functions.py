from python_datapack.utils.io import write_to_versioned_file

def create_functions(config):
    namespace = config["namespace"]
    version = config["version"]
    write_to_versioned_file(config, "abilities/piglin_schedule", f"""
execute at @a[tag={namespace}.pig] as @e[type=piglin,distance=..20,tag=!{namespace}.pig] run function {namespace}:v{version}/abilities/piglin_add

#self call
execute if score #piglin {namespace}.settings matches 1 run schedule function {namespace}:v{version}/abilities/piglin_schedule 1s
""")
    write_to_versioned_file(config, "abilities/piglin_add", f"""
team join piglin
tag @s add {namespace}.pig
""")
    write_to_versioned_file(config, "abilities/piglin_remove", f"""
advancement revoke @s only {namespace}:utilities/piglin

team leave @s[team=piglin]
tag @s remove {namespace}.pig
""")
    write_to_versioned_file(config, "abilities/piglin_chest", f"""
advancement revoke @s only {namespace}:utilities/unpiglin

#give tag + team
execute if score #piglin {namespace}.settings matches 1 run function {namespace}:v{version}/abilities/piglin_add
""")
    write_to_versioned_file(config, "abilities/die", f"""
#make reusable
advancement revoke @s only {namespace}:utilities/die

#make the item invulnerable
execute if score #unbreak {namespace}.settings matches 1 as @e[type=item,distance=..2,predicate={namespace}:unbreak] run data modify entity @s Invulnerable set value 1b
#remove piglin mark
execute if entity @s[tag={namespace}.pig] run function {namespace}:v{version}/abilities/piglin_remove
""")
    write_to_versioned_file(config, "abilities/inventory_unbreak", f"""
#make reusable
advancement revoke @s only {namespace}:utilities/inventory_unbreak

#make the item invulnerable
execute if score #unbreak {namespace}.settings matches 1 anchored eyes as @e[type=item,distance=..2,predicate={namespace}:unbreak] run data modify entity @s Invulnerable set value 1b
""")
    write_to_versioned_file(config, "abilities/ely_break", f"""
#make reusable
advancement revoke @s only {namespace}:utilities/elytra_break

execute if score #break {namespace}.settings matches 1 run function {namespace}:action/ely_breaking
""")
    write_to_versioned_file(config, "abilities/ely_breaking", f"""
#put the elytra in the storage
data modify storage {namespace}:data elytra set from entity @s Inventory[{"{Slot:102b}"}]

#reset the elytra
data remove storage {namespace}:data elytra.components.minecraft:custom_model_data
data remove storage {namespace}:data elytra.components.minecraft:enchantements
data remove storage {namespace}:data elytra.components.minecraft:item_name
data remove storage {namespace}:data elytra.components.minecraft:lore
data remove storage {namespace}:data elytra.components.minecraft:attribute_modifiers
data remove storage {namespace}:data elytra.components.minecraft:custom_data.{namespace}_data

#put the elytra back
summon item_frame ~ ~ ~ {'{UUID:[I;997275056,-1263320765,-1403232826,-334258573]}'}
data modify entity 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73 Item set from storage {namespace}:data elytra
item replace entity @s armor.chest from entity 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73 container.0
kill 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73
""")
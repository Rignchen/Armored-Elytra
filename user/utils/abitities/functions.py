from python_datapack.utils.io import write_to_versioned_file

def create_functions(config):
	namespace = config["namespace"]
	write_to_versioned_file(config, "abilities/ely_break", f"""
#make reusable
advancement revoke @s only {namespace}:utilities/elytra_break

execute if score #break {namespace}.settings matches 1 run function {namespace}:action/ely_breaking
""")
	write_to_versioned_file(config, "abilities/ely_breaking", f"""
#put the armor in the storage
data modify storage {namespace}:data armor set from entity @s Inventory[{"{Slot:102b}"}]

#reset the armor
data remove storage {namespace}:data armor.components.minecraft:item_model
data remove storage {namespace}:data armor.components.minecraft:enchantements
data remove storage {namespace}:data armor.components.minecraft:item_name
data remove storage {namespace}:data armor.components.minecraft:lore
data remove storage {namespace}:data armor.components.minecraft:custom_data
data remove storage {namespace}:data armor.components.minecraft:equippable
data remove storage {namespace}:data armor.components.minecraft:glider

#put the armor back
summon item_frame ~ ~ ~ {'{UUID:[I;997275056,-1263320765,-1403232826,-334258573]}'}
data modify entity 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73 Item set from storage {namespace}:data armor
item replace entity @s armor.chest from entity 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73 container.0
kill 3b7135b0-b4b3-4143-ac5c-5dc6ec139e73
""")
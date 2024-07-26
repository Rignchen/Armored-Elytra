from python_datapack.utils.io import write_to_versioned_file
from python_datapack.utils.database_helper import DEFAULT_ORE
def create_custom_craft(config: dict):
	namespace = config["namespace"]
	for ore in DEFAULT_ORE.__reversed__():
		name = ore.value
		if name == "wooden": name = "leather"
		if name == "stone": name = "chainmail"
		from_database = config["database"][f"{name}_elytra"]
		write_to_versioned_file(config, f"calls/crafts/{name}", 
f"""
# Flag for consuming items instead of durability
execute if data block ~ ~ ~ Items[{'{id:"minecraft:elytra", components:{"minecraft:custom_data":{"'+namespace+'_data":{"armored":1b}}}}'}] run return 1

data modify storage smithed.crafter:input flags append value consume_tools

# Put into the storage
data modify storage {namespace}:data armor set from block ~ ~ ~ Items[{'{id:"minecraft:' +name+'_chestplate"}'}].components
data modify storage {namespace}:data elytra set from block ~ ~ ~ Items[{'{id:"minecraft:elytra"}'}].components

# Lock the next crafts
scoreboard players set @s smithed.data 1

# Data
execute unless data storage {namespace}:data armor.minecraft:item_name run data modify storage {namespace}:data armor.minecraft:item_name set value "{from_database["item_name"]}"
execute unless data storage {namespace}:data armor.minecraft:attribute_modifiers run data modify storage {namespace}:data armor.minecraft:attribute_modifiers set value {from_database["attribute_modifiers"]}
execute unless data storage {namespace}:data armor.minecraft:max_damage run data modify storage {namespace}:data armor.minecraft:max_damage set value {from_database["max_damage"]}
execute if data storage {namespace}:data armor.minecraft:lore run data modify storage {namespace}:data armor.minecraft:lore append value {from_database["lore"]}
execute unless data storage {namespace}:data armor.minecraft:lore run data modify storage {namespace}:data armor.minecraft:lore set value {from_database["lore"]}
data modify storage {namespace}:data armor.minecraft:custom_model_data set value {from_database["custom_model_data"]}
data modify storage {namespace}:data armor.minecraft:custom_data set value {from_database["custom_data"]}


# Put elytra back in the crafter
item replace block ~ ~ ~ container.16 with elytra
data modify block ~ ~ ~ Items[{'{Slot:16b}'}].components set from storage {namespace}:data armor

# Empty storages
data remove storage {namespace}:data elytra
data remove storage {namespace}:data armor

""")

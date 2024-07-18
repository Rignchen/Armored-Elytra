
# Import database helper (from python_datapack, containing database helper functions)
from python_datapack.utils.database_helper import *
from python_datapack.constants import SMITHED_CRAFTER_COMMAND

# Main function should return a database
def main(config: dict) -> dict[str, dict]:
	database: dict[str, dict] = {}
	version = config["version"]
	namespace = config["namespace"]
	STARTING_CMD = 537291
	for ore in DEFAULT_ORE.__reversed__():
		name = ore.value
		if name == "wooden": name = "leather"
		if name == "stone": name = "chainmail"
		database[f"{name}_elytra"] = {
			"id": "minecraft:elytra",
			"category": "equipment",
			"custom_data": {
				f"{namespace}_data": ["armored"]
			},
			"max_damage": VanillaEquipments.CHESTPLATE.value[ore]["durability"],
			RESULT_OF_CRAFTING: [
				{"type":"crafting_shapeless", "result_count":1, SMITHED_CRAFTER_COMMAND:f"function {namespace}:v{version}/calls/crafts/{name}", "category":"equipment", "ingredients": [ingr_repr("minecraft:elytra"), ingr_repr(f"minecraft:{name}_chestplate")]}
			],
			"attribute_modifiers": [],
		}
		if ore == DEFAULT_ORE.GOLD: database[f"{name}_elytra"]["custom_data"][f"{namespace}_data"].append("piglin")
		if ore == DEFAULT_ORE.NETHERITE: database[f"{name}_elytra"]["custom_data"][f"{namespace}_data"].append("unbreak")
		temp = VanillaEquipments.CHESTPLATE.value[ore].copy()
		del temp["durability"]
		for key in temp.keys():
			database[f"{name}_elytra"]["attribute_modifiers"] += [{"type":key, "slot":"chest", "amount":temp[key], "operation":"add_value", "id":f"{name}_elytra.{key}"}]
	deterministic_custom_model_data(config, database, STARTING_CMD)
	add_item_name_and_lore_if_missing(config, database)
	add_private_custom_data_for_namespace(config, database)
	add_smithed_ignore_vanilla_behaviours_convention(database)
	# Return database
	return database


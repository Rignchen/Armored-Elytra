
# Import database helper (from python_datapack, containing database helper functions)
from python_datapack.utils.database_helper import *
from python_datapack.constants import SMITHED_CRAFTER_COMMAND

# Main function should return a database
def main(config: dict) -> dict[str, dict]:
	database: dict[str, dict] = {}
	version = config["version"]
	namespace = config["namespace"]
	for ore in reversed(DEFAULT_ORE):
		name = ore.value
		if name == "wooden": name = "leather"
		if name == "stone": name = "chainmail"
		database[f"{name}_elytra"] = {
			"id": f"minecraft:{name}_chestplate",
			"category": "equipment",
			"custom_data": {
				f"{namespace}_data": {"armored": True}
			},
			RESULT_OF_CRAFTING: [
				{"type":"crafting_shapeless", "result_count":1, SMITHED_CRAFTER_COMMAND:f"function {namespace}:v{version}/calls/crafts/{name}", "category":"equipment", "ingredients": [ingr_repr("minecraft:elytra"), ingr_repr(f"minecraft:{name}_chestplate")]}
			],
			"glider": {},
			"equippable": {
				"slot": "chest",
				"equip_sound": f"item.armor.equip_{name}",
				"model": f"{namespace}:{name}_elytra"
			},
			"item_model": f"{namespace}:{name}_elytra"
		}
	add_item_name_and_lore_if_missing(config, database)
	add_private_custom_data_for_namespace(config, database)
	add_smithed_ignore_vanilla_behaviours_convention(database)
	# Return database
	return database


from python_datapack.utils.io import write_to_file, super_json_dump


def generate_predicates(config: dict): 
	build_datapack = config["build_datapack"]
	namespace: str = config["namespace"]
	version = config["version"]
	pig = {
		"condition": "minecraft:entity_properties",
		"entity": "this",
		"predicate": {
			"equipment": {
				"chest": {
					"components": {
						"minecraft:custom_data": {
							f"{namespace}_data":["armored"]
						}
					}
				}
			}
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/predicate/pig.json", super_json_dump(pig))
	unbreak = {
		"condition": "minecraft:entity_properties",
		"entity": "this",
		"predicate": {
			"nbt": "{Item:{components:{custom_data:{"+namespace+"_data:[\"unbreak\"]}}}}"
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/predicate/unbreak.json", super_json_dump(unbreak))
from python_datapack.utils.io import write_to_file, super_json_dump

def generate_models(config: dict):
	build_resource_pack = config["build_resource_pack"]
	database: dict = config["database"]
	namespace = config["namespace"]
	for item in database.keys():
		ore = item.split("_")[0]
		model = {
		"textures": {
			"layer0": "item/elytra",
			"layer1": f"item/{ore}_chestplate"
		},
		"elements": [
			{
				"from": [0,-2,6.8],
				"to": [16,14,7.8],
				"rotation": {"angle": 0,"axis": "y","origin": [8,6,7.2]},
				"faces": {
					"north": {"uv": [0,0,16,16],"texture": "#layer0"},
					"south": {"uv": [0,0,16,16],"texture": "#layer0"}
					}
				},
			{
				"from": [0,1,7],
				"to": [16,17,8],
				"rotation": {"angle": 0,"axis": "y","origin": [0,1,15]},
				"faces": {
					"north": {"uv": [0,0,16,16],"texture": "#layer1"},
					"south": {"uv": [0,0,16,16],"texture": "#layer1"}
				}
			}
		],
		"gui_light": "front",
		"display": {
			"ground": {
				"rotation": [0,0,0],
				"translation": [0,2,0],
				"scale": [0.5,0.5,0.5]
			},
			"head": {
				"rotation": [0,180,0],
				"translation": [0,13,7],
				"scale": [1,1,1]
			},
			"thirdperson_righthand": {
				"rotation": [0,0,0],
				"translation": [0,3,1],
				"scale": [0.55,0.55,0.55]
			},
			"firstperson_righthand": {
				"rotation": [0,-90,25],
				"translation": [1.13,3.2,1.13],
				"scale": [0.68,0.68,0.68]
			},
			"fixed": {
				"rotation": [0,180,0],
				"scale": [1,1,1]
			}
		}
	}
		write_to_file(f"{build_resource_pack}/assets/{namespace}/models/item/{item}.json", super_json_dump(model), True)

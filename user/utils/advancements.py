from python_datapack.utils.io import write_to_file, super_json_dump

def global_conventional_advancements(config: dict):
	build_datapack = config["build_datapack"]
	author = config["author"]
	namespace = config["namespace"]
	datapack_name = config["datapack_name"]
	description = config["description"]
	icon = config["database"][config["datapack_icon_item"]]
	global_root = {
		"display": {
			"title": "Installed Datapacks",
			"description": "",
			"icon": {
				"id": "minecraft:knowledge_book"
			},
			"background": "minecraft:textures/block/gray_concrete.png",
			"show_toast": False,
			"announce_to_chat": False
		},
		"criteria": {
			"trigger": {
				"trigger": "minecraft:tick"
			}
		}
	}
	write_to_file(f"{build_datapack}/data/global/advancement/root.json", super_json_dump(global_root))
	author_advancement = {
		"display": {
			"title": author,
			"description": "",
			"icon": {
				"id": "minecraft:player_head",
				"components": {
					"minecraft:profile": author
				}
			},
			"show_toast": False,
			"announce_to_chat": False
		},
		"parent": "global:root",
		"criteria": {
			"trigger": {
				"trigger": "minecraft:tick"
			}
		}
	}
	write_to_file(f"{build_datapack}/data/global/advancement/{author.lower()}.json", super_json_dump(author_advancement))
	datapack_advancement = {
		"display": {
			"icon": {
				"id": icon["id"],
				"components": {
					"minecraft:custom_model_data": icon["custom_model_data"]
				}
			},
			"title": datapack_name,
			"description": description,
			"show_toast": False,
			"announce_to_chat": False
		},
		"parent": f"global:{author.lower()}",
		"criteria": {
			"trigger": {
				"trigger": "minecraft:tick"
			}
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/{namespace}.json", super_json_dump(datapack_advancement))

def display_advancements(config: dict):
	build_datapack = config["build_datapack"]
	namespace = config["namespace"]
	netherite_elytra = {
		"display": {
			"icon": {
				"id": "minecraft:elytra",
				"components": {
					"minecraft:custom_model_data": 537296
				}
			},
			"title": "Fly saferly",
			"description": "Craft yourself netherite elytra to fly safer than nether",
			"frame": "challenge",
			"show_toast": True,
			"announce_to_chat": True,
			"hidden": False
		},
		"parent": "minecraft:nether/netherite_armor",
		"criteria": {
			"requirement": {
				"trigger": "minecraft:inventory_changed",
				"conditions": {
					"items": [
						{
							"items": [
								"minecraft:elytra"
							],
							"components": {
								"minecraft:custom_model_data": 537296
							}
						}
					]
				}
			}
		},
		"rewards": {
			"experience": 20
		}
	}


	write_to_file(f"{build_datapack}/data/{namespace}/advancement/display/netherite_elytra.json", super_json_dump(netherite_elytra))

def utilities_advancements(config: dict):
	build_datapack = config["build_datapack"]
	namespace = config["namespace"]
	version = config["version"]
	piglin = {
		"criteria": {
			"piglins": {
				"trigger": "minecraft:inventory_changed",
				"conditions": {
					"player": {
						"equipment": {
							"chest": {
								"components": {
									"minecraft:custom_data": {
										f"{namespace}_data": ["piglin"]
									}
								}
							}
						}
					},
					"items": [
						{
							"components": {
								"minecraft:custom_data": {
									f"{namespace}_data": ["piglin"]
								}
							}
						}
					]
				}
			}
		},
		"rewards": {
			"function": f"{namespace}:v{version}/abilities/piglin_chest"
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/utilities/piglin.json", super_json_dump(piglin))
	unpiglin = {
		"criteria": {
			"piglins": {
				"trigger": "minecraft:inventory_changed",
				"conditions": {
					"player": [
						{
							"condition": "inverted",
							"term": {
								"condition": "minecraft:entity_properties",
								"entity": "this",
								"predicate": {
									"equipment": {
										"chest": {
											"components": {
												"minecraft:custom_data": {
													f"{namespace}_data": ["piglin"]
												}
											}
										}
									}
								}
							}
						}
					]
				}
			}
		},
		"rewards": {
			"function": f"{namespace}:v{version}/abilities/piglin_remove"
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/utilities/unpiglin.json", super_json_dump(unpiglin))
	inventory_unbreak = {
		"criteria": {
			"piglins": {
				"trigger": "inventory_changed"
			}
		},
		"rewards": {
			"function": f"{namespace}:v{version}/abilities/inventory_unbreak"
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/utilities/inventory_unbreak.json", super_json_dump(inventory_unbreak))
	elytra_break = {
		"criteria": {
			"piglins": {
				"trigger": "minecraft:inventory_changed",
				"conditions": {
					"player": {
						"equipment": {
							"chest": {
								"items": ["elytra"],
								"components": {
									"minecraft:custom_data": {
										f"{namespace}_data": ["unbreak"]
									}
								},
								"predicates": {
									"minecraft:damage": {
										"durability": 1
									}
								}
							}
						}
					}
				}
			}
		},
		"rewards": {
			"function": f"{namespace}v{version}/abilities/ely_break"
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/utilities/elytra_break.json", super_json_dump(elytra_break))
	die = {
		"criteria": {
			"die": {
				"trigger": "entity_killed_player"
			}
		},
		"rewards": {
			"function": f"{namespace}:v{version}/abilities/die"
		}
	}
	write_to_file(f"{build_datapack}/data/{namespace}/advancement/utilities/die.json", super_json_dump(die))







def generate_advancements(config: dict):
	global_conventional_advancements(config)
	display_advancements(config)
	utilities_advancements(config)
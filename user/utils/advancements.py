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





def generate_advancements(config: dict):
    global_conventional_advancements(config)

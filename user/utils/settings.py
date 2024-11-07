from python_datapack.utils.io import write_to_versioned_file, write_to_file


def register_settings(config):
	settings: dict[str, tuple[str, str, int]] = config["user_settings"]
	name = config["datapack_name"]
	build_datapack = config["build_datapack"]
	namespace = config["namespace"]
	version = config["version"]
	load = f"""
scoreboard objectives add {namespace}.settings dummy "Armored Elytra Settings"
"""
	settings_function = f"""
tellraw @s [{'{"text":"['+name+'] Settings:\\n","color":"green"}'}]

"""
	for score, desc_default in settings.items():
		load += f"execute unless score #{score} {namespace}.settings = #{score} {namespace}.settings run scoreboard players set #{score} {namespace}.settings {desc_default[2]}\n"
		settings_function += f"""
execute if score #{score} {namespace}.settings matches 1 run tellraw @s [{'{"color":"white","text":"'+desc_default[0]+'"}'},{'{"clickEvent":{"action":"run_command","value":"/function '+namespace+':v'+version+'/update_config {\\\"value\\\":0, \\\"param\\\":\\\"'+score+'\\\"}"}'},"color":"green","hoverEvent":{'{"action":"show_text","value":[{"text":"Dea'+desc_default[1]+'"}]},"text":"[x]"}'}]
execute if score #{score} {namespace}.settings matches 0 run tellraw @s [{'{"color":"white","text":"'+desc_default[0]+'"}'},{'{"clickEvent":{"action":"run_command","value":"/function '+namespace+':v'+version+'/update_config {\\\"value\\\":1, \\\"param\\\":\\\"'+score+'\\\"}"}'},"color":"red","hoverEvent":{'{"action":"show_text","value":[{"text":"A'+desc_default[1]+'"}]},"text":"[ ]"}'}]

"""
	write_to_versioned_file(config, "load/secondary", load, prepend=True)
	write_to_file(f"{build_datapack}/data/{namespace}/function/settings.mcfunction", settings_function)
	write_to_versioned_file(config, "update_config", f"""
$scoreboard players set #$(param) {namespace}.settings $(value)
function {namespace}:settings
""")
	

	



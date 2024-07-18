from python_datapack.utils.io import write_to_versioned_file


def register_settings(config):
    settings: dict[str, tuple[str, str, int]] = config["user_settings"]
    name = config["datapack_name"]
    build_datapack = config["build_datapack"]
    namespace = config["namespace"]
    version = config["version"]
    load = """
scoreboard objectives add ely_set dummy "Armored Elytra Settings"

#team
team add piglin
execute if score #piglin ely_set matches 0 as @e[type=piglin,tag=elytrarmor_pig] run function elytrarmor:action/power/piglin_remove
execute if score #piglin ely_set matches 0 as @a[tag=elytrarmor_pig] run function elytrarmor:action/power/piglin_remove
#schedule
function elytrarmor:action/power/piglin_schedule
"""
    settings_function = f"""
tellraw @s [{'{"text":"['+name+'] Settings:\\n","color":"green"}'}]

"""
    for score, desc_default in settings.items():
        load += f"execute unless score #{score} ely_set = #{score} ely_set run scoreboard players set #{score} ely_set {desc_default[2]}\n"
        settings_function += f"""
execute if score #{score} ely_set matches 1 run tellraw @s [{'{"color":"white","text":"'+desc_default[0]+'"}'},{'{"clickEvent":{"action":"run_command","value":"/function elytrarmor:update_config {\\\"value\\\":0, \\\"param\\\":\\\"'+score+'\\\"}"}'},"color":"red","hoverEvent":{'{"action":"show_text","value":[{"text":"A'+desc_default[1]+'"}]},"text":"[ ]"}'}]
execute if score #unbreak ely_set matches 0 run tellraw @s [{'{"color":"white","text":"'+desc_default[0]+'"}'},{'{"clickEvent":{"action":"run_command","value":"/function elytrarmor:update_config {\\\"value\\\":1, \\\"param\\\":\\\"'+score+'\\\"}"}'},"color":"green","hoverEvent":{'{"action":"show_text","value":[{"text":"Dea'+desc_default[1]+'"}]},"text":"[x]"}'}]

"""
    write_to_versioned_file(config, "load/secondary", load, prepend=True)
    write_to_versioned_file(config, "settings", settings_function)
    write_to_versioned_file(config, "update_config", f"""
$scoreboard players set #$(param) ely_set $(value)
function {namespace}:v{version}/settings
""")
    

    



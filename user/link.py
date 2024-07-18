
# Imports
from python_datapack.constants import *
from python_datapack.utils.print import *
from python_datapack.utils.io import *
from .utils.create_craft import create_custom_craft
from .utils.advancements import generate_advancements
from .utils.settings import register_settings

# Main function is run just before making finalyzing the build process (zip, headers, lang, ...)
def main(config: dict) -> None:
	database: dict[str, dict] = config["database"]
	namespace: str = config["namespace"]
	create_custom_craft(config)
	generate_advancements(config)
	register_settings(config)
	


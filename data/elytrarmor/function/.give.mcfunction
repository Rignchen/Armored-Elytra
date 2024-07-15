## manualy runed by the player
#execute as at the player when he run the command

#plugins?
function #elytrarmor:give

#give
give @s elytra[max_damage=80, damage=0, item_name='{"text":"Leather Elytra"}', custom_name='{"text":"Leather Elytra", "italic":false}', attribute_modifiers=[{type:"generic.armor",slot:"chest", amount:3, operation:"add_value", id:"leather_elytra"}], custom_model_data=537291, custom_data={Tags:["armored"]}]
give @s elytra[max_damage=240, damage=0, item_name='{"text":"Chain Elytra"}', custom_name='{"text":"Chain Elytra", "italic":false}', attribute_modifiers=[{type:"generic.armor",slot:"chest", amount:5, operation:"add_value", id:"chain_elytra"}],custom_model_data=537292,custom_data={Tags:["armored"]}]
give @s elytra[max_damage=240, damage=0, item_name='{"text":"Iron Elytra"}', custom_name='{"text":"Iron Elytra", "italic":false}', attribute_modifiers=[{type:"generic.armor", slot:"chest", amount:6,operation:"add_value", id:"iron_elytra"}], custom_model_data=537293, custom_data={Tags:["armored"]}]
give @s elytra[max_damage=112, damage=0, item_name='{"text":"Golden Elytra"}', custom_name='{"text":"Golden Elytra", "italic":false}', attribute_modifiers=[{type:"generic.armor", slot:"chest", amount:5, operation:"add_value", id:golden_elytra}], custom_model_data=537294, custom_data={Tags:["armored", "piglin"]}]
give @s elytra[max_damage=528, damage=0, custom_name='{"text":"Diamond Elytra","italic":false}', attribute_modifiers=[{type:"generic.armor", slot:"chest", amount:8, operation:"add_value", id:"diamond_elytra.armor"},{type:"generic.armor_toughness", slot:"chest", amount:2, operation:"add_value", id:"diamond_elytra.armor_toughness"}], custom_model_data=537295, custom_data={Tags:["armored"]}]
give @s elytra[max_damage=592, damage=0, item_name='{"text": "Netherite Elytra"}', custom_name='{"text":"Netherite Elytra", "italic":false}', attribute_modifiers=[{type:"generic.armor", slot:"chest", amount:8, operation:"add_value", id:"netherite_elytra.armor"}, {type:"generic.armor_toughness", slot:"chest", amount:3, operation:"add_value", id:"netherite_elytra.armor_toughness"}, {type:"generic.knockback_resistance", slot:"chest", amount:0.1, operation:"add_value", id:"netherite_armor.knockback_resistance"}], custom_model_data=537296, custom_data={Tags:["armored","unbreak"]}]

#crafting table
loot give @s loot smithed.crafter:blocks/table

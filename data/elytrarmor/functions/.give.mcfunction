## manualy runed by the player
#execute as at the player when he run the command

#plugins?
function #elytrarmor:give

#give
give @s elytra{Damage: 0, CustomModelData: 537291, AttributeModifiers: [{Amount: 3, Slot: "chest", AttributeName: "generic.armor", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor"}], Tags: ["armored"], display: {Name: '{"text":"Leather Elytra","italic":false}'}}
give @s elytra{Damage: 0, CustomModelData: 537292, AttributeModifiers: [{Amount: 5, Slot: "chest", AttributeName: "generic.armor", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor"}], Tags: ["armored"], display: {Name: '{"text":"Chain Elytra","italic":false}'}}
give @s elytra{Damage: 0, CustomModelData: 537293, AttributeModifiers: [{Amount: 6, Slot: "chest", AttributeName: "generic.armor", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor"}], Tags: ["armored"], display: {Name: '{"text":"Iron Elytra","italic":false}'}}
give @s elytra{Damage: 0, CustomModelData: 537294, AttributeModifiers: [{Amount: 5, Slot: "chest", AttributeName: "generic.armor", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor"}], Tags: ["armored", "piglin"], display: {Name: '{"text":"Golden Elytra","italic":false}'}}
give @s elytra{Damage: 0, CustomModelData: 537295, AttributeModifiers: [{Amount: 8, Slot: "chest", AttributeName: "generic.armor", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor"}, {Amount: 2, Slot: "chest", AttributeName: "generic.armor_toughness", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor_toughness"}], Tags: ["armored"], display: {Name: '{"text":"Diamond Elytra","italic":false}'}}
give @s elytra{Damage: 0, CustomModelData: 537296, AttributeModifiers: [{Amount: 8, Slot: "chest", AttributeName: "generic.armor", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor"}, {Amount: 3, Slot: "chest", AttributeName: "generic.armor_toughness", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.armor_toughness"}, {Amount: 0.1d, Slot: "chest", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; -1502880662, 165364280, -1338453509, -1199027486], Name: "generic.knockback_resistance"}], Tags: ["armored", "unbreak"], display: {Name: '{"text":"Netherite Elytra","italic":false}'}}

#crafting table
loot give @s loot smithed.crafter:blocks/table

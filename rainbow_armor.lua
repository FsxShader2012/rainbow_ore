--Define Rainbow Armor
minetest.register_tool("rainbow_ore:rainbow_ore_helmet", {
	description = "Rainbow Helmet",
	inventory_image = "rainbow_ore_helmet_inv.png",
	groups = {armor_head=30, armor_heal=24, armor_use=50},
	wear = 0,
})
minetest.register_tool("rainbow_ore:rainbow_ore_chestplate", {
	description = "Rainbow Chestplate",
	inventory_image = "rainbow_ore_chestplate_inv.png",
	groups = {armor_torso=40, armor_heal=24, armor_use=50},
	wear = 0,
})
minetest.register_tool("rainbow_ore:rainbow_ore_leggings", {
	description = "Rainbow Leggings",
	inventory_image = "rainbow_ore_leggings_inv.png",
	groups = {armor_legs=40, armor_heal=24, armor_use=50},
	wear = 0,
})
minetest.register_tool("rainbow_ore:rainbow_ore_boots", {
	description = "Rainbow Boots",
	inventory_image = "rainbow_ore_boots_inv.png",
	groups = {armor_feet=30, armor_heal=24, armor_use=50},
	wear = 0,
})
 
 
--Define Rainbow Armor crafting recipe
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_helmet",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "", "rainbow_ore:rainbow_ore_ingot"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_chestplate",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
	},
})
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_leggings",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "", "rainbow_ore:rainbow_ore_ingot"},
	},
})
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_boots",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "", "rainbow_ore:rainbow_ore_ingot"},
	},
})
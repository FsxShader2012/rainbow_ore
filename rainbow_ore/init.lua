-- Rainbow_Ore Test Mod ----------- Copyright Robin Kuhn 2015


-- Define Rainbow_Ore_Block node
minetest.register_node("rainbow_ore:rainbow_ore_block", {
	description = "Rainbow Ore",
	tile_images = {"rainbow_ore_block.png"},
	groups = {stone=2, cracky=3},
	drop = "rainbow_ore:rainbow_ore_block",
	is_ground_content = true,
})


--Define Rainbow_Ore_Ingot node
minetest.register_craftitem("rainbow_ore:rainbow_ore_ingot", {
	description = "Rainbow Ore Ingot",
	inventory_image = "rainbow_ore_ingot.png",
})

--Define Rainbow_Ore Smelt Recipe
minetest.register_craft({
	type = "cooking",
	output = "rainbow_ore:rainbow_ore_ingot",
	recipe = "rainbow_ore:rainbow_ore_block",
	cooktime = 10,
})


--Register Rainbow Pickaxe
minetest.register_tool("rainbow_ore:rainbow_ore_pickaxe", {
	description = "Rainbow Pickaxe",
	inventory_image = "rainbow_ore_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.25}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})


--Define Rainbow_Ore_Pickaxe crafting recipe
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_pickaxe",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", ""},
		{"", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})


--Register Rainbow Axe
minetest.register_tool("rainbow_ore:rainbow_ore_axe", {
	description = "Rainbow Axe",
	inventory_image = "rainbow_ore_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=1.05, [2]=0.45, [3]=0.25}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	}
})


--Define Rainbow Axe crafting recipe
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_axe",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "", ""},
		{"rainbow_ore:rainbow_ore_ingot", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})

minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_axe",
	recipe = {
		{"", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", ""},
		{"", "default:stick", "rainbow_ore:rainbow_ore_ingot", ""},
		{"", "default:stick", "", ""}
	}
})


--Register Rainbow shovel
minetest.register_tool("rainbow_ore:rainbow_ore_shovel", {
	description = "Rainbow Shovel",
	inventory_image = "rainbow_ore_shovel.png",
	wield_image = "rainbow_ore_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=0.55, [2]=0.25, [3]=0.15}, uses=15, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})


--Define Rainbow shovel crafting recipe
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_shovel",
	recipe = {
		{"", "rainbow_ore:rainbow_ore_ingot", "", ""},
		{"", "default:stick", "", ""},
		{"", "default:stick", "", ""}
	}
})


--Register Rainbow sword
minetest.register_tool("rainbow_ore:rainbow_ore_sword", {
	description = "Rainbow Sword",
	inventory_image = "rainbow_ore_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=0.95, [2]=0.45, [3]=0.15}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})


--Define Rainbow sword crafting recipe
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_sword",
	recipe = {
		{"", "rainbow_ore:rainbow_ore_ingot", "", ""},
		{"", "rainbow_ore:rainbow_ore_ingot", "", ""},
		{"", "default:stick", "", ""}
	}
})


--Make Rainbow Ore spawn
minetest.register_ore({
	ore_type = "scatter",
	ore = "rainbow_ore:rainbow_ore_block",
	wherein = "default:stone",
	clust_scarcity = 17*17*17,
	clust_num_ores = 4,
	clust_size = 3,
	height_min = -31000,
	height_max = -100,
})


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


--Define Rainbow shield
minetest.register_tool("rainbow_ore:rainbow_ore_shield", {
	description = "Rainbow Shield",
	inventory_image = "rainbow_ore_shield_inv.png",
	groups = {armor_shield=30, armor_heal=24, armor_use=50},
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


--Define Rainbow shield crafting recipe
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_shield",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"", "rainbow_ore:rainbow_ore_ingot", ""},
	},
})
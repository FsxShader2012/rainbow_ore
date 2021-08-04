-- Rainbow_Ore Test Mod ----------- Copyright Robin Kuhn 2015

rainbow_ore = {}
rainbow_ore.modname = minetest.get_current_modname()
rainbow_ore.modpath = minetest.get_modpath(rainbow_ore.modname)

--Check for mods
if minetest.get_modpath("3d_armor") then
dofile(rainbow_ore.modpath.."/rainbow_armor.lua")
end

if minetest.get_modpath("shields") then
dofile(rainbow_ore.modpath.."/rainbow_shield.lua")
end


local S = minetest.get_translator(rainbow_ore.modname)

-- Define Rainbow_Ore_Block node
minetest.register_node("rainbow_ore:rainbow_ore_block", {
	description = S("Rainbow Ore"),
	tiles = {"rainbow_ore_block.png"},
	groups = {stone=2, cracky=3},
	drop = "rainbow_ore:rainbow_ore_block",
	is_ground_content = true,
})


--Define Rainbow_Ore_Ingot node
minetest.register_craftitem("rainbow_ore:rainbow_ore_ingot", {
	description = S("Rainbow Ore Ingot"),
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
	description = S("Rainbow Pickaxe"),
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


local stick = minetest.settings:get("rainbow_ore.stick")
if not stick then
	if minetest.registered_items["default:stick"] then
		stick = "default:stick"
	else
		stick = "rainbow_ore:rainbow_ore_ingot"
	end
end

--Define Rainbow_Ore_Pickaxe crafting recipe
minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_pickaxe",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"", stick, ""},
		{"", stick, ""}
	}
})


--Register Rainbow Axe
minetest.register_tool("rainbow_ore:rainbow_ore_axe", {
	description = S("Rainbow Axe"),
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
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", ""},
		{"rainbow_ore:rainbow_ore_ingot", stick, ""},
		{"", stick, ""}
	}
})

minetest.register_craft({
	output = "rainbow_ore:rainbow_ore_axe",
	recipe = {
		{"", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"", stick, "rainbow_ore:rainbow_ore_ingot"},
		{"", stick, ""}
	}
})


--Register Rainbow shovel
minetest.register_tool("rainbow_ore:rainbow_ore_shovel", {
	description = S("Rainbow Shovel"),
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
		{"", "rainbow_ore:rainbow_ore_ingot", ""},
		{"", stick, ""},
		{"", stick, ""}
	}
})


--Register Rainbow sword
minetest.register_tool("rainbow_ore:rainbow_ore_sword", {
	description = S("Rainbow Sword"),
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
		{"", "rainbow_ore:rainbow_ore_ingot", ""},
		{"", "rainbow_ore:rainbow_ore_ingot", ""},
		{"", stick, ""}
	}
})


--Define Nyan Rainbow crafting recipe
minetest.register_craft({
	output = "default:nyancat_rainbow",
	recipe = {
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"},
		{"rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot", "rainbow_ore:rainbow_ore_ingot"}
	}
})


--Make Rainbow Ore spawn
local spawn_within = minetest.settings:get("rainbow_ore.spawn_within") or "default:stone"
minetest.log("action", "[rainbow_ore] ore set to spawn within " .. spawn_within
	.. ", this can be changed with rainbow_ore.spawn_within setting")

minetest.register_on_mods_loaded(function()
	if minetest.registered_nodes[spawn_within] then
		minetest.register_ore({
			ore_type = "scatter",
			ore = "rainbow_ore:rainbow_ore_block",
			wherein = spawn_within,
			clust_scarcity = 17*17*17,
			clust_num_ores = 3,
			clust_size = 3,
			y_min = -31000,
			y_max = -200,
		})
	else
		minetest.log("warning", "[rainbow_ore] " .. spawn_within .. " is not a registered node, rainbow ore will not spawn")
	end
end)

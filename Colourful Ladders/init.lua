local colours = {
	{"black",      "Black",      "#000000b0"},
	{"blue",       "Blue",       "#015dbb70"},
	{"brown",      "Brown",      "#a78c4570"},
	{"cyan",       "Cyan",       "#01ffd870"},
	{"dark_green", "Dark Green", "#005b0770"},
	{"dark_grey",  "Dark Grey",  "#303030b0"},
	{"green",      "Green",      "#61ff0170"},
	{"grey",       "Grey",       "#5b5b5bb0"},
	{"magenta",    "Magenta",    "#ff05bb70"},
	{"orange",     "Orange",     "#ff840170"},
	{"pink",       "Pink",       "#ff65b570"},
	{"red",        "Red",        "#ff000070"},
	{"violet",     "Violet",     "#2000c970"},
	{"white",      "White",      "#abababc0"},
	{"yellow",     "Yellow",     "#e3ff0070"},
}

for i in ipairs(colours) do
    
    minetest.register_node("noah:wooden_ladder_" .. colours[i][1], {
        description = colours[i][2] .. " Wooden Ladder",
        tiles = {"wooden_ladder.png^[colorize:" .. colours[i][3]},
        inventory_image = "wooden_ladder.png^[colorize:" .. colours[i][3],
        paramtype = "light",
        paramtype2 = "wallmounted",
        sunlight_propagates = true,
        walkable = false,
        climable = true,
        is_ground_content = false,
        selection_box = {
            type = "wallmounted",
        },
        groups = {
            choppy = 2,
            oddly_breakable_by_hand = 3,
            flammable = 2,
        },
        legacy_wallmounted = true,
        sounds = default.node_sound_wood_defaults(),
    })

end

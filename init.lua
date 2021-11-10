minetest.register_node("colourful_ladders:wooden_ladder", {
    description = "Colourful Ladders",
    tiles = {"wooden_ladder.png"},
    inventory_image = "wooden_ladder.png",
    wield_image = "wooden_ladder.png",
    is_ground_content = false,
    paramtype1 = "light",
    drawtype = "signlike",
    groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
    sounds = default.node_sound_wood_defaults(),
    paramtype2 = "colorwallmounted",
    palette = "unifieddyes_palette_colorwallmounted.png",
    walkable = false,
    climbable = true,
    selection_box = { type = "wallmounted" },
})
    
minetest.override_item("colourful_ladders:wooden_ladder", {
    palette = "unifieddyes_palette_colorwallmounted.png",
    airbrush_replacement_node = "colourful_ladders:wooden_ladder",
})
    
unifieddyes.register_color_craft({
    output = "colourful_ladders:wooden_ladder",
    palette = "wallmounted",
    type = "shapeless",
    neutral_node = "colourful_ladders:wooden_ladder",
    recipe = {
        "NEUTRAL_NODE",
        "MAIN_DYE"
    }
})    

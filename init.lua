local sounds
if minetest.get_modpath("default") then
    sounds = default.node_sound_wood_defaults()
end

minetest.register_node("scaffolding:scaffolding", {
    description = "Scaffolding",
    drawtype = "glasslike_framed_optional",
    tiles = {"scaffolding_scaffolding.png", "scaffolding_scaffolding_detail.png"},
    paramtype = "light",
    paramtype2 = "glasslikeliquidlevel",
    sunlight_propagates = true,
    walkable = false,
    climbable = true,
    groups = {cracky = 3, oddly_breakable_by_hand = 3, dig_immediate = 3},
    sounds = sounds,
})

minetest.register_craft({
    output = "scaffolding:scaffolding 2",
    recipe = {
        {"group:stick", "",            "group:stick"},
        {"",            "group:stick", ""},
        {"group:stick", "",            "group:stick"},
    }
})

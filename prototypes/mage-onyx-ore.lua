data:extend(
{
    { --Autoplace Control Declaration
        type = "autoplace-control",
        name = "mage-onyx-ore",
        category = "resource",
        richness = true,
        order = "b-e"
    },
    { --Noise Layer Declaration
        type = "noise-layer",
        name = "mage-onyx-ore"
    },
    { --Entity Declaration
        type = "resource",
        name = "mage-onyx-ore",
        icon = "__phylactorio__/graphics/icons/mage-onyx-ore.png",
        icon_size = 32,
        flags = {"placeable-neutral"},
        category = "basic-solid",
        order="a-b-a",
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        --walking_sound = sounds.ore,
        --minimum = 0,
        --normal = 1,
        --resource_patch_search_radius = 3,
        minable =
        {
          mining_particle = "stone-particle",
          mining_time = 2,
          result = "mage-onyx-ore",
          fluid_amount = (not data.is_demo and 10) or nil,
          required_fluid = (not data.is_demo and "midnight-essence") or nil
        },
        collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = "mage-onyx-ore",
          order = "c",
          base_density = 0.9,
          base_spots_per_km2 = 1.25,
          has_starting_area_placement = false,
          random_spot_size_minimum = 2,
          random_spot_size_maximum = 4,
          regular_rq_factor_multiplier = 1
        },
        stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
        stages =
        {
          sheet =
          {
            filename = "__phylactorio__/graphics/entity/mage-onyx-ore/mage-onyx-ore.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = "__phylactorio__/graphics/entity/mage-onyx-ore/hr-mage-onyx-ore.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        stages_effect =
        {
          sheet =
          {
            filename = "__phylactorio__/graphics/entity/mage-onyx-ore/mage-onyx-ore-glow.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            blend_mode = "additive",
            flags = {"light"},
            hr_version =
            {
              filename = "__phylactorio__/graphics/entity/mage-onyx-ore/hr-mage-onyx-ore-glow.png",
              priority = "extra-high",
              width = 128,
              height = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5,
              blend_mode = "additive",
              flags = {"light"}
            }
          }
        },
        effect_animation_period = 5,
        effect_animation_period_deviation = 1,
        effect_darkness_multiplier = 3.6,
        min_effect_alpha = 0.2,
        max_effect_alpha = 0.3,
        mining_visualisation_tint = {r = 0.814, g = 1.000, b = 0.499, a = 1.000}, -- #cfff7fff
        map_color = {r=0.2, g=0.03, b=0.2},
    },
    { --Item Declaration
        type = "item",
        name = "mage-onyx-ore",
        icon = "__phylactorio__/graphics/icons/mage-onyx-ore.png",
        icon_size = 32,
        order = "a[mage-onyx-ore]",
        stack_size = 200
    },
}
)
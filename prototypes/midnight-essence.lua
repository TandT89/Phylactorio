data:extend(
{
    { --Autoplace Control Declaration
        type = "autoplace-control",
        name = "midnight-essence",
        category = "resource",
        richness = true,
        order = "b-e"
    },
    { --Noise Layer Declaration
        type = "noise-layer",
        name = "midnight-essence1"
    },
    { --Entity Declaration
        type = "resource",
        name = "midnight-essence",
        icon = "__phylactorio__/graphics/icons/midnight-essence.png",
        icon_size = 32,
        flags = {"placeable-neutral"},
        category = "basic-fluid",
        order="a-b-a",
        infinite = true,
        highlight = true,
        minimum = 60000,
        normal = 300000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 12,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_time = 1,
          results =
          {
            {
              type = "fluid",
              name = "midnight-essence",
              amount_min = 10,
              amount_max = 10,
              probability = 1
            }
          }
        },
        --walking_sound = sounds.oil,
        collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
          name = "midnight-essence",
          order = "c", -- Other resources are "b"; m.e. won't get placed if something else is already there.
          base_density = 8.2,
          base_spots_per_km2 = 1.8,
          random_probability = 1/48,
          random_spot_size_minimum = 1,
          random_spot_size_maximum = 1, -- don't randomize spot size
          additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
          has_starting_area_placement = false,
          regular_rq_factor_multiplier = 1
        },
        stage_counts = {0},
        stages =
        {
          sheet =
          {
            filename = "__phylactorio__/graphics/entity/midnight-essence/midnight-essence.png",
            priority = "extra-high",
            width = 75,
            height = 61,
            frame_count = 4,
            variation_count = 1
          }
        },
        map_color = {r=0.24, g=0.09, b=0.78},
        map_grid = false
    },
    { --Fluid Declaration
        type = "fluid",
        name = "midnight-essence",
        default_temperature = 5,
        max_temperature = 10,
        heat_capacity = "0.05KJ",
        base_color = {r=0.24, g=0.09, b=0.78},
        flow_color = {r=0.34, g=0.19, b=0.5},
        icon = "__phylactorio__/graphics/icons/midnight-essence.png",
        icon_size = 64, icon_mipmaps = 4,
        auto_barrel = false,
        order = "a[fluid]-m[midnight-essence]",
        stack_size = 200
    },
}
)
data:extend(
{
    { --Autoplace Control Declaration
        type = "autoplace-control",
        name = "mage-onyx",
        category = "resource",
        richness = true,
        order = "b-e"
    },
    { --Noise Layer Declaration
        type = "noise-layer",
        name = "mage-onyx"
    },
    { --Entity Declaration
        type = "resource",
        name = "mage-onyx",
        icon = "__phylactorio__/graphics/icons/mage-onyx.png",
        icon_size = 32,
        flags = {"placeable-neutral"},
        category = "basic-solid",
        order="a-b-a",
        infinite = false,
        --highlight = true,
        minimum = 0,
        normal = 1,
        resource_patch_search_radius = 3,
        tree_removal_probability = 0,
        tree_removal_max_distance = 0,
        minable =
        {
          mining_time = 1,
          results =
          {
            {
              type = "item",
              name = "mage-onyx",
              amount_min = 1,
              amount_max = 1,
              probability = 1
            }
          }
        },
        collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
          name = "mage-onyx",
          order = "b",
          base_density = 8,
          has_starting_area_placement = false,
          regular_rq_factor_multiplier = 1
        },
        stage_counts = {8},
        stages =
        {
          sheet =
          {
            filename = "__phylactorio__/graphics/entity/ores/mage-onyx.png",
            priority = "extra-high",
            width = 38,
            height = 38,
            frame_count = 4,
            variation_count = 8
          }
        },
        map_color = {r=0.2, g=0.03, b=0.2},
    },
    { --Item Declaration
        type = "item",
        name = "mage-onyx",
        icon = "__phylactorio__/graphics/icons/mage-onyx.png",
        icon_size = 32,
        order = "a[mage-onyx]",
        stack_size = 200
    },
}
)
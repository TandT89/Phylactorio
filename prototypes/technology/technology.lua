data:extend(
{
    {
        type = "technology",
        name = "scripture",
        localised_name = {"technology-name.scripture"},
        localised_description = {"technology-description.scripture"},
        icon_size = 128,
        icon = "__phylactorio__/graphics/technology/scripture.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "mage-onyx-plate"
          }
        },
        unit =
        {
          count = 75,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
          },
          time = 10
        },
        prerequisites = {"steel-processing", "logistic-science-pack"},
        order = "c-a"
      },
      {
        type = "technology",
        name = "religious-demolition",
        localised_name = {"technology-name.religious-demolition"},
        localised_description = {"technology-description.religious-demolition"},
        icon_size = 128,
        icon = "__phylactorio__/graphics/technology/religious-demolition.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "unholy-hand-grenade"
          }
        },
        unit =
        {
          count = 75,
          ingredients =
          {
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
          },
          time = 10
        },
        prerequisites = {"military-2", "scripture"},
        order = "c-a"
      },
}
)
data:extend(
{
    {
        type = "recipe",
        name = "mage-onyx-plate",
        category = "smelting",
        energy_required = 3.2,
        enabled = false,
        ingredients = {{"mage-onyx-ore", 1}},
        result = "mage-onyx-plate"
      },
    {
        type = "recipe",
        name = "unholy-hand-grenade",
        enabled = false,
        ingredients =
        {
          {"grenade", 1},
          {"mage-onyx-plate", 25}
        },
        result = "unholy-hand-grenade"
      },
}
)
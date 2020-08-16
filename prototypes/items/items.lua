data:extend(
{
    {
    type = "item",
    name = "mage-onyx-ore",
    subgroup = "raw-resource",
    icon = "__phylactorio__/graphics/icons/items/mage-onyx-ore.png",
    icon_size = 32,
    order = "f[mage-onyx-ore]",
    stack_size = 200
    },
    {
    type = "item",
    name = "mage-onyx-plate",
    subgroup = "raw-material",
    icon = "__phylactorio__/graphics/icons/items/mage-onyx-plate.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "c[mage-onyx-plate]",
    stack_size = 200
    },
    {
        type = "capsule",
        name = "unholy-hand-grenade",
        icon = "__phylactorio__/graphics/icons/items/unholy-hand-grenade.png",
        icon_size = 64, icon_mipmaps = 4,
        capsule_action =
        {
          type = "throw",
          --uses_stack = false,
          attack_parameters =
          {
            type = "projectile",
            ammo_category = "grenade",
            cooldown = 60,
            projectile_creation_distance = 0.6,
            range = 18,
            ammo_type =
            {
              category = "grenade",
              target_type = "position",
              action =
              {
                {
                  type = "direct",
                  action_delivery =
                  {
                    type = "projectile",
                    projectile = "unholy-hand-grenade",
                    starting_speed = 0.3
                  }
                },
                {
                  type = "direct",
                  action_delivery =
                  {
                    type = "instant",
                    target_effects =
                    {
                      {
                        type = "play-sound",
                        sound = {
                            {
                               filename = "__base__/sound/fight/throw-projectile-1.ogg",
                               volume = 0.5 
                            },
                            {
                                filename = "__base__/sound/fight/throw-projectile-2.ogg",
                                volume = 0.5 
                             },
                             {
                                filename = "__base__/sound/fight/throw-projectile-3.ogg",
                                volume = 0.5 
                             },
                             {
                                filename = "__base__/sound/fight/throw-projectile-4.ogg",
                                volume = 0.5 
                             },
                             {
                                filename = "__base__/sound/fight/throw-projectile-5.ogg",
                                volume = 0.5 
                             },
                             {
                                filename = "__base__/sound/fight/throw-projectile-6.ogg",
                                volume = 0.5 
                             },
                        },
                      },
                    }
                  }
                } 
              }
            }
          }
        },
        -- radius_color = { r = 0.25, g = 0.05, b = 0.25, a = 0.25 },
        subgroup = "capsule",
        order = "a[grenade]-b[unholy]",
        stack_size = 100
      },
}
)
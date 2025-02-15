-- A RECIPE FOR STAY IN THIS FILE SHOULD HAVE THE ATTRIBUTE category = "atmosphere-condensation"
return
{
  {
    type = "recipe",
    name = "hydrogen",
    category = "atmosphere-condensation",
    subgroup = "fluid-recipes",
    icon = kr_fluids_icons_path  .. "hydrogen.png",
    icon_size = 64,
    energy_required = 20,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    hide_from_player_crafting = true,
    ingredients = {},
    results =
    {
      { type = "fluid", name = "hydrogen", amount = 30 }
    },
    subgroup = "raw-material",
    order = "a[atmosphere-condensation]-a1[hydrogen]"
    },
  {
    type = "recipe",
    name = "oxygen",
    category = "atmosphere-condensation",
    subgroup = "fluid-recipes",
    icon = kr_fluids_icons_path  .. "oxygen.png",
    icon_size = 64,
    energy_required = 5,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    hide_from_player_crafting = true,
    ingredients = {},
    results =
    {
      { type = "fluid", name = "oxygen", amount = 30 }
    },
    subgroup = "raw-material",
    order = "a[atmosphere-condensation]-a2[oxygen]"
    },
  {
    type = "recipe",
    name = "nitrogen",
    category = "atmosphere-condensation",
    subgroup = "fluid-recipes",
    icon = kr_fluids_icons_path  .. "nitrogen.png",
    icon_size = 64,
    energy_required = 30,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    hide_from_player_crafting = true,
    ingredients = {},
    results =
    {
      { type = "fluid", name = "nitrogen", amount = 30 }
    },
    subgroup = "raw-material",
    order = "a[atmosphere-condensation]-a3[nitrogen]"
    },
  {
    type = "recipe",
    name = "water-from-atmosphere",
    category = "atmosphere-condensation",
    subgroup = "fluid-recipes",
    icon = kr_fluids_icons_path  .. "water.png",
    icon_size = 64,
    energy_required = 10,
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    hide_from_player_crafting = true,
    ingredients = {},
    results =
    {
      { type = "fluid", name = "water", amount = 30 }
    },
    subgroup = "raw-material",
    order = "a[atmosphere-condensation]-a0[water]"
    },
}

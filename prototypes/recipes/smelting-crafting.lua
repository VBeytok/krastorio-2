-- A RECIPE FOR STAY IN THIS FILE SHOULD HAVE THE ATTRIBUTE category = "smelting-crafting"
return
{
  {
    type = "recipe",
    name = "kr-s-c-copper-cable",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 1.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = 
    {
      {"copper-ore", 2}
    },
    result = "copper-cable",
    result_count = 2
  },
  -- Irons
  {
    type = "recipe",
    name = "kr-s-c-iron-stick",
    category = "smelting-crafting",   
    subgroup = "smelting-crafting",
    energy_required = 1.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients = 
    {
      {"iron-ore", 2}
    },
    result = "iron-stick",
    result_count = 2
  },
  {
    type = "recipe",
    name = "kr-s-c-iron-gear-wheel",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 1.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients =
    {
      {"iron-ore", 2}
    },
    result = "iron-gear-wheel",
    result_count = 1
  },
  {
    type = "recipe",
    name = "kr-s-c-iron-beam",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 4.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients =
    {
      {"iron-ore", 4}
    },
    result = "iron-beam"
  },
  -- Steels
  {
    type = "recipe",
    name = "kr-s-c-steel-gear-wheel",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 5.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients =
    {
      {"iron-plate", 10},
      {"coke", 2}
    },
    result = "steel-gear-wheel",
    result_count = 5
  },
  {
    type = "recipe",
    name = "kr-s-c-steel-beam",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 20.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients =
    {
      {"iron-plate", 20},
      {"coke", 4}
    },
    result = "steel-beam",
    result_count = 5
  },
  -- Imersiums
  {
    type = "recipe",
    name = "kr-s-c-imersium-gear-wheel",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 2.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients =
    {
      {"imersite-powder", 3},
      {"rare-metals", 2}
    },
    result = "imersium-gear-wheel",
    result_count = 1
  },
  {
    type = "recipe",
    name = "kr-s-c-imersium-beam",
    category = "smelting-crafting",
    subgroup = "smelting-crafting",
    energy_required = 12.0,
    enabled = false,
    allow_productivity = true,
    hide_from_player_crafting = true,
    always_show_made_in = true,
    ingredients =
    {
      {"imersite-powder", 6},
      {"rare-metals", 4}
    },
    result = "imersium-beam",
    result_count = 1
  }
}
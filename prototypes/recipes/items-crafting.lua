-- A RECIPE FOR STAY IN THIS FILE SHOULD !!NOT!! HAVE THE ATTRIBUTE category
return
{
  {
    type = "recipe",
    name = "automation-core",
    energy_required = 2,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"iron-gear-wheel", 4},
      {"iron-stick", 4},
      {"copper-plate", 6}
    },
    result = "automation-core",
    result_count = 2
  },
  {
    type = "recipe",
    name = "electronic-components",
    energy_required = 4,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"silicon", 2},
      {"plastic-bar", 2},
      {"glass", 2}
    },
    result = "electronic-components",
    result_count = 4
  },
  {
    type = "recipe",
    name = "steel-gear-wheel",
    energy_required = 0.5,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"steel-plate", 1}
    },
    result = "steel-gear-wheel",
    result_count = 1
  },
  {
    type = "recipe",
    name = "steel-beam",
    energy_required = 2,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"steel-plate", 2}
    },
    result = "steel-beam"
  },    
  {
    type = "recipe",
    name = "kr-creep-collector",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"iron-stick", 1},
      {"iron-gear-wheel", 5},
      {"automation-core", 1}
    },
    result = "kr-creep-collector"
  },  
  {
    type = "recipe",
    name = "kr-jackhammer",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"iron-stick", 1},
      {"engine-unit", 1},
      {"steel-plate", 1}
    },
    result = "kr-jackhammer"
  },
  {
    type = "recipe",
    name = "first-aid-kit",
    energy_required = 5,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"biomass", 1},
      {"wood", 1},
      {"iron-plate", 1}
    },
    result = "first-aid-kit"
  },  
  {
    type = "recipe",
    name = "landfill-2",
    localized_name = {"item-name.landfill"},
    localized_description = {"item-description.landfill"},
    icons = 
    {
      {icon = "__base__/graphics/icons/landfill.png", icon_size = 64},
      {icon = kr_items_with_variations_icons_path .. "sand/sand.png", icon_size = 64, scale = 0.26, shift = {8,-8}}
    },
    category = "crafting-with-fluid",
    enabled = false,
    allow_as_intermediate = false,
    energy_required = 0.5,
    ingredients =
    {
      { "sand", 50 },
      { type = "fluid", name = "water", amount = 50 }
    },
    result = "landfill"
    },
  {
    type = "recipe",
    name = "empty-dt-fuel",
    energy_required = 10,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"low-density-structure", 2},
      {"rare-metals", 1},
    },
    result = "empty-dt-fuel"
  },  
  {
    type = "recipe",
    name = "kr-black-reinforced-plate",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"refined-concrete", 20},
      {"steel-beam", 5}
    },
    result = "kr-black-reinforced-plate",
    result_count = 10
  },
  {
    type = "recipe",
    name = "kr-white-reinforced-plate",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"refined-concrete", 20},
      {"steel-beam", 5}
    },
    result = "kr-white-reinforced-plate",
    result_count = 10
  },  
  {
    type = "recipe",
    name = "ai-core",
    category = "crafting-with-fluid",
    energy_required = 16,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      { type = "item",  name = "processing-unit", amount = 2 },
      { type = "item",  name = "imersite-crystal", amount = 2 },
      { type = "fluid", name = "nitric-acid", amount = 10 }
    },
    result = "ai-core",
    result_count = 2
  },
  {
    type = "recipe",
    name = "pollution-filter",
    energy_required = 10,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"coal", 2},
      {"steel-plate", 2},
      {"plastic-bar", 2}
    },
    result = "pollution-filter"
    },
  {
    type = "recipe",
    name = "restore-used-pollution-filter",
    category = "crafting-with-fluid",
    icon = kr_recipes_icons_path .. "restore-used-pollution-filter.png",
    icon_size = 128,
    energy_required = 10,
    enabled = false,
    ingredients =
    {
       {type = "item",  name = "used-pollution-filter", amount = 1},
      { type = "fluid", name = "water", amount = 50}
    },
    results =
    {
      { type = "item",  name = "pollution-filter", amount = 1},
      { type = "fluid", name = "dirty-water", amount = 50}
    },
    subgroup = "intermediate-product",
    order = "w3-a[restore-used-pollution-filter]"
    },
  {
    type = "recipe",
    name = "improved-pollution-filter",
    energy_required = 10,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"pollution-filter", 1},
      {"biomass", 1},
      {"imersite-powder", 1}
    },
    result = "improved-pollution-filter"
    },
  {
    type = "recipe",
    name = "restore-used-improved-pollution-filter",
    category = "crafting-with-fluid",
    icon = kr_recipes_icons_path .. "restore-used-improved-pollution-filter.png",
    icon_size = 128,
    energy_required = 10,
    enabled = false,
    ingredients =
    {
       {type = "item",  name = "used-improved-pollution-filter", amount = 1},
      { type = "fluid", name = "water", amount = 50}
    },
    results =
    {
      { type = "item",  name = "improved-pollution-filter", amount = 1},
      { type = "fluid", name = "dirty-water", amount = 50}
    },
    subgroup = "intermediate-product",
    order = "w3-b[restore-used-pollution-filter]"
    },
  ---
  {
    type = "recipe",
    name = "imersium-gear-wheel",
    energy_required = 0.5,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"imersium-plate", 1}
    },
    result = "imersium-gear-wheel",
    result_count = 1
  },
  {
    type = "recipe",
    name = "imersium-beam",
    energy_required = 3,
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      {"imersium-plate", 2}
    },
    result = "imersium-beam",
    result_count = 1
  },  
  {
    type = "recipe",
    name = "impulse-rifle",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"low-density-structure", 5},
      {"imersite-crystal", 1},
      {"steel-gear-wheel", 1}
    },
    result = "impulse-rifle"
    },  
  {
    type = "recipe",
    name = "heavy-rocket-launcher",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"low-density-structure", 5},
      {"steel-gear-wheel", 1},
      {"processing-unit", 1}      
    },
    result = "heavy-rocket-launcher"
    },  
  {
    type = "recipe",
    name = "impulse-rifle-ammo",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"lithium-sulfur-battery", 1},
      {"imersite-crystal", 3},
      {"plastic-bar", 1},
    },
    result = "impulse-rifle-ammo"
    },
  {
    type = "recipe",
    name = "imersite-rounds-magazine",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"imersite-crystal", 2},
      {"piercing-rounds-magazine", 1}
    },
    result = "imersite-rounds-magazine"
    },  
  {
    type = "recipe",
    name = "heavy-rocket",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"explosives", 10},
      {"steel-plate", 5},
      {"rocket-fuel", 10},
      {"plastic-bar", 5},     
      {"processing-unit", 1}      
    },
    result = "heavy-rocket"
    },
  {
    type = "recipe",
    name = "energy-control-unit",
    enabled = false,
    allow_productivity = true,
    energy_required = 10,
    ingredients =
    {
      {"low-density-structure", 6},
      {"imersite-crystal", 3},
      {"electronic-components", 9},
      {"lithium-sulfur-battery", 3}
    },
    result = "energy-control-unit"
    },
  {
    type = "recipe",
    name = "matter-stabilizer",
    enabled = false,
    allow_as_intermediate = false,
    allow_productivity = true,
    energy_required = 5,
    ingredients =
    {
      {"imersium-plate", 6},
      {"energy-control-unit", 3},
      {"processing-unit", 3}
    },
    result = "matter-stabilizer"
    },
  {
    type = "recipe",
    name = "empty-antimatter-fuel-cell",
    category = "crafting-with-fluid",
    enabled = false,
    allow_as_intermediate = false,
    allow_productivity = true,
    energy_required = 10,
    ingredients =
    {
      { type = "fluid", name = "nitric-acid", amount = 50 },
      { "energy-control-unit", 10},
      { "imersium-plate", 8 },
      { "matter-stabilizer", 2 }
    },
    result = "empty-antimatter-fuel-cell"
    },
  {
    type = "recipe",
    name = "charged-antimatter-fuel-cell",
    category = "matter-deconversion",
    enabled = false,
    allow_as_intermediate = false,
    energy_required = 5,
    ingredients =
    {
      { type = "fluid", name = "matter", amount = 1000},
      { "empty-antimatter-fuel-cell", 1 }
    },
    result = "charged-antimatter-fuel-cell"
    },
  {
    type = "recipe",
    name = "basic-railgun-shell",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"advanced-circuit", 1}
    },
    result = "basic-railgun-shell"
    },  
  {
    type = "recipe",
    name = "explosion-railgun-shell",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"basic-railgun-shell", 1},
      {"explosives", 3}
    },
    result = "explosion-railgun-shell"
    },  
  {
    type = "recipe",
    name = "explosive-turret-rocket",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"rocket-fuel", 10},
      {"rocket-control-unit", 1},
      {"steel-plate", 5},
      {"explosives", 5}
    },
    result = "explosive-turret-rocket"
    },  
  {
    type = "recipe",
    name = "nuclear-turret-rocket",
    enabled = false,
    energy_required = 60,
    ingredients =
    {
      {"explosive-turret-rocket", 1},
      {"steel-plate", 5},
      {"uranium-235", 10},
      {"rocket-control-unit", 1}
    },
    result = "nuclear-turret-rocket"
    },
  {
    type = "recipe",
    name = "antimatter-turret-rocket",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"imersium-plate", 1},
      {"explosive-turret-rocket", 1},
      {"charged-antimatter-fuel-cell", 1},
      {"processing-unit", 1}      
    },
    result = "antimatter-turret-rocket"
  },
  {
    type = "recipe",
    name = "antimatter-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"imersium-plate", 1},
      {"artillery-shell", 1},
      {"charged-antimatter-fuel-cell", 1},
      {"processing-unit", 1}    
    },
    result = "antimatter-artillery-shell"
  },
  {
    type = "recipe",
    name = "antimatter-rocket",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"imersium-plate", 2},
      {"heavy-rocket", 1},
      {"charged-antimatter-fuel-cell", 3},
      {"processing-unit", 1}    
    },
    result = "antimatter-rocket"
  },
  {
    type = "recipe",
    name = "antimatter-railgun-shell",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"imersium-plate", 1},
      {"basic-railgun-shell", 1},
      {"charged-antimatter-fuel-cell", 1},
      {"processing-unit", 1}    
    },
    result = "antimatter-railgun-shell"
  },
  {
    type = "recipe",
    name = "nuclear-artillery-shell",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"rocket-control-unit", 10},
      {"steel-plate", 10},
      {"artillery-shell", 1},
      {"uranium-235", 10}
    },
    result = "nuclear-artillery-shell"
  },
  {
    type = "recipe",
    name = "gps-satellite",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"satellite", 1},
      {"rocket-control-unit", 1},
      {"ai-core", 4}
    },
    result = "gps-satellite"
  } 
}
return
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
  {
    type = "recipe",
    name = "kr-greenhouse",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"wood" , 20},
      {"iron-beam", 10},
      {"glass", 20},
      {"automation-core", 2}
    },
    result = "kr-greenhouse"
  },
  {
    type = "recipe",
    name = "kr-bio-lab",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"biomass", 200},
      {"iron-beam", 10},
      {"glass", 20},
      {"electronic-circuit", 2}
    },
    result = "kr-bio-lab"
  },
  {
    type = "recipe",
    name = "kr-crusher",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"iron-beam", 10},
      {"iron-gear-wheel", 20},
      {"copper-cable", 6},
      {"automation-core", 2}
    },
    result = "kr-crusher"
  },
  {
    type = "recipe",
    name = "kr-electric-mining-drill-mk2",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"electric-mining-drill", 1},
      {"steel-gear-wheel", 5},
      {"rare-metals", 4}
    },
    result = "kr-electric-mining-drill-mk2"
  },
  {
    type = "recipe",
    name = "kr-electric-mining-drill-mk3",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"kr-electric-mining-drill-mk2", 1},
      {"imersium-gear-wheel", 5},
      {"imersite-crystal", 4}
    },
    result = "kr-electric-mining-drill-mk3"
  },
  {
    type = "recipe",
    name = "kr-shelter",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"iron-beam", 25},
      {"iron-plate", 25},
      {"copper-cable", 10},
      {"coal", 50}
    },
    result = "kr-shelter"
  },
  {
    type = "recipe",
    name = "kr-mineral-water-pumpjack",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"automation-core", 2},
      {"steel-gear-wheel", 5},
      {"steel-beam", 5},
      {"pipe", 5}
    },
    result = "kr-mineral-water-pumpjack"
  },
  {
    type = "recipe",
    name = "kr-air-purifier",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 4},
      {"advanced-circuit", 4},
      {"plastic-bar", 20},
      {"engine-unit", 1}
    },
    result = "kr-air-purifier"
  },
  {
    type = "recipe",
    name = "kr-sentinel",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"glass", 1},
      {"iron-plate", 2},
      {"copper-cable", 1},
      {"automation-core", 1}
    },
    result = "kr-sentinel"
  },
  {
    type = "recipe",
    name = "kr-fuel-refinery",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 5},
      {"electronic-circuit", 5},
      {"pipe", 5}
    },
    result = "kr-fuel-refinery"
  },
  {
    type = "recipe",
    name = "kr-gas-power-station",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 10},
      {"engine-unit", 20},
      {"electronic-circuit", 4},
      {"pipe", 4}
    },
    result = "kr-gas-power-station"
  },
  {
    type = "recipe",
    name = "kr-tesla-coil",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"steel-beam" , 20},
      {"electronic-circuit", 20},
      {"copper-cable", 100}
    },
    result = "kr-tesla-coil"
  },
  -- -- --
  -- NEW LABORATORIES
  -- -- --
    {
    type = "recipe",
    name = "biusart-lab",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 10},
      {"steel-beam", 5},
      {"lab", 1},
      {"copper-cable", 10}
    },
    result = "biusart-lab"
  },
  {
    type = "recipe",
    name = "kr-singularity-lab",
    energy_required = 120,
    enabled = false,
    ingredients =
    {
      {"ai-core", 20},
      {"biusart-lab", 5},
      {"steel-plate", 40},
      {"electric-engine-unit", 30},
      {"rare-metals", 60},
      {"processing-unit", 100}
    },
    result = "kr-singularity-lab"
  },
  -- -- --
  -- Research servers
  -- -- --
  {
    type = "recipe",
    name = "kr-research-server",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 4},
      {"advanced-circuit", 5},
      {"electronic-components", 50}
    },
    result = "kr-research-server"
  },
  {
    type = "recipe",
    name = "kr-quantum-computer",
    energy_required = 120,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 20},
      {"copper-plate", 20},
      {"rare-metals", 50},
      {"ai-core", 50},
      {"electronic-components", 100},
      {"processing-unit", 100}
    },
    result = "kr-quantum-computer"
  },
  -- -- --
  -- FLUID STORAGES
  -- -- --
  {
    type = "recipe",
    name = "kr-fluid-storage-1",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 10},
      {"steel-plate", 20},
      {"kr-steel-pipe", 4}
    },
    result = "kr-fluid-storage-1"
  },
  {
    type = "recipe",
    name = "kr-fluid-storage-2",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 20},
      {"steel-plate", 60},
      {"kr-steel-pipe", 12}
    },
    result = "kr-fluid-storage-2"
  },
  -- -- --
  {
    type = "recipe",
    name = "kr-steel-pipe",
    normal =
    {
      enabled = false,
      ingredients =
      {
        {"steel-plate", 1}
      },
      result = "kr-steel-pipe"
    },
    expensive =
    {
      enabled = false,
      ingredients =
      {
        {"steel-plate", 2}
      },
      result = "kr-steel-pipe"
    }
  },
  {
    type = "recipe",
    name = "kr-steel-pipe-to-ground",
    enabled = false,
    ingredients =
    {
      {"kr-steel-pipe", 15},
      {"steel-plate", 5}
    },
    result = "kr-steel-pipe-to-ground",
    result_count = 2
  },
  {
    type = "recipe",
    name = "kr-steel-pump",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"steel-gear-wheel", 4},
      {"engine-unit", 1},
      {"steel-beam", 1},
      {"kr-steel-pipe", 1}
    },
    result = "kr-steel-pump"
  },
  {
    type = "recipe",
    name = "kr-electrolysis-plant",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 10},
      {"automation-core", 3},
      {"copper-plate", 10},
      {"glass", 10},
    },
    result = "kr-electrolysis-plant"
  },
  {
    type = "recipe",
    name = "kr-filtration-plant",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 10},
      {"automation-core", 3},
      {"glass", 10},
      {"engine-unit", 4}
    },
    result = "kr-filtration-plant"
  },
  {
    type = "recipe",
    name = "kr-atmospheric-condenser",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 10},
      {"steel-gear-wheel", 10},
      {"electronic-circuit", 4},
      {"engine-unit", 2}
    },
    result = "kr-atmospheric-condenser"
  },
  {
    type = "recipe",
    name = "kr-fluid-burner",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 10},
      {"steel-plate", 20},
      {"electronic-circuit", 3}
    },
    result = "kr-fluid-burner"
  },
  {
    type = "recipe",
    name = "kr-quarry-drill",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 50},
      {"steel-plate", 50},
      {"rare-metals", 50},
      {"electric-engine-unit", 100},
      {"processing-unit", 20}
    },
    result = "kr-quarry-drill"
  },
  {
    type = "recipe",
    name = "kr-advanced-solar-panel",
    category = "crafting-with-fluid",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"solar-panel", 1},
      {"imersite-crystal", 5},
      {"electronic-components", 5},
      {type = "fluid", name = "nitric-acid", amount = 25}
    },
    result = "kr-advanced-solar-panel"
  },
  {
    type = "recipe",
    name = "kr-fusion-reactor",
    energy_required = 200,
    enabled = false,
    ingredients =
    {
      {"concrete", 500},
      {"copper-plate", 500},
      {"steel-plate", 500},
      {"steel-beam", 350},
      {"rare-metals", 350},
      {"processing-unit", 100}
    },
    result = "kr-fusion-reactor"
  },
  {
    type = "recipe",
    name = "kr-advanced-steam-turbine",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"steam-turbine", 2},
      {"steel-gear-wheel", 10},
      {"steel-beam", 10},
      {"rare-metals", 60},
      {"electric-engine-unit", 10}
    },
    result = "kr-advanced-steam-turbine"
  },
  {
    type = "recipe",
    name = "kr-energy-storage",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"steel-beam", 10},
      {"processing-unit", 10},
      {"rare-metals", 50},
      {"energy-control-unit", 50}
    },
    result = "kr-energy-storage"
  },
  {
    type = "recipe",
    name = "kr-matter-plant",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 10},
      {"kr-steel-pipe", 10},
      {"energy-control-unit", 10},
      {"ai-core", 5}
    },
    result = "kr-matter-plant"
  },
  {
    type = "recipe",
    name = "kr-matter-assembler",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 4},
      {"kr-steel-pipe", 4},
      {"energy-control-unit", 10},
      {"ai-core", 3}
    },
    result = "kr-matter-assembler"
  },
  {
    type = "recipe",
    name = "kr-stabilizer-charging-station",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 4},
      {"energy-control-unit", 20},
      {"processing-unit", 1}
    },
    result = "kr-stabilizer-charging-station"
  },
  {
    type = "recipe",
    name = "kr-antimatter-reactor",
    energy_required = 300,
    enabled = false,
    ingredients =
    {
      {"ai-core", 50},
      {"energy-control-unit", 50},
      {"imersium-beam", 100},
      {"imersium-plate", 350},
      {"rare-metals", 350},
      {"steel-plate", 350}
    },
    result = "kr-antimatter-reactor"
  },
  ---
  -- Belts
  ---
  -- Advanced
  {
    type = "recipe",
    name = "kr-advanced-splitter",
    --category = "crafting-with-fluid",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"express-splitter", 1},
      {"steel-gear-wheel", 4},
      {"advanced-circuit", 1}
    },
    result = "kr-advanced-splitter"
  },
  {
    type = "recipe",
    name = "kr-advanced-transport-belt",
    --category = "crafting-with-fluid",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
      {"express-transport-belt", 1},
      {"steel-gear-wheel", 4},
      {"rare-metals", 1},
    },
    result = "kr-advanced-transport-belt"
  },
  {
    type = "recipe",
    name = "kr-advanced-underground-belt",
    --category = "crafting-with-fluid",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"express-underground-belt", 2},
      {"kr-advanced-transport-belt", 30},
    },
    result = "kr-advanced-underground-belt",
    result_count = 2
  },
  -- Superior
  {
    type = "recipe",
    name = "kr-superior-splitter",
    --category = "crafting-with-fluid",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"kr-advanced-splitter", 1},
      {"imersium-gear-wheel", 4},
      {"processing-unit", 1}
    },
    result = "kr-superior-splitter"
  },
  {
    type = "recipe",
    name = "kr-superior-transport-belt",
    --category = "crafting-with-fluid",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
      {"kr-advanced-transport-belt", 1},
      {"imersium-gear-wheel", 4},
      {"low-density-structure", 1},
    },
    result = "kr-superior-transport-belt"
  },
  {
    type = "recipe",
    name = "kr-superior-underground-belt",
    --category = "crafting-with-fluid",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"kr-advanced-underground-belt", 2},
      {"kr-superior-transport-belt", 40},
    },
    result = "kr-superior-underground-belt",
    result_count = 2
  },
  -- -- --
  -- Superior inserters
  -- -- --
  {
    type = "recipe",
    name = "kr-superior-inserter",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"inserter-parts", 1},
      {"imersium-plate", 1},
      {"imersium-gear-wheel", 4},
      {"processing-unit", 1}
    },
    result = "kr-superior-inserter"
  },
  {
    type = "recipe",
    name = "kr-superior-long-inserter",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"inserter-parts", 2},
      {"imersium-plate", 2},
      {"imersium-gear-wheel", 4},
      {"processing-unit", 1}
    },
    result = "kr-superior-long-inserter"
  },
  {
    type = "recipe",
    name = "kr-superior-filter-inserter",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"inserter-parts", 1},
      {"imersium-plate", 1},
      {"imersium-gear-wheel", 4},
      {"processing-unit", 2}
    },
    result = "kr-superior-filter-inserter"
  },
  {
    type = "recipe",
    name = "kr-superior-long-filter-inserter",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"inserter-parts", 2},
      {"imersium-plate", 2},
      {"imersium-gear-wheel", 4},
      {"processing-unit", 2}
    },
    result = "kr-superior-long-filter-inserter"
  },
  -- -- --
  {
    type = "recipe",
    name = "kr-advanced-furnace",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 20},
      {"steel-beam", 80},
      {"rare-metals", 80},
      {"copper-plate", 60},
      {"electronic-components", 20},
      {"energy-control-unit", 10}
    },
    result = "kr-advanced-furnace"
  },
  {
    type = "recipe",
    name = "kr-advanced-assembling-machine",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 4},
      {"assembling-machine-3", 2},
      {"electric-furnace", 2},
      {"ai-core", 2}
    },
    result = "kr-advanced-assembling-machine"
  },
  {
    type = "recipe",
    name = "kr-advanced-chemical-plant",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"processing-unit", 20},
      {"imersium-beam", 20},
      {"rare-metals", 80},
      {"electronic-components", 40},
      {"imersium-gear-wheel", 20},
      {"kr-steel-pipe", 10}
    },
    result = "kr-advanced-chemical-plant"
  },
  {
    type = "recipe",
    name = "kr-large-roboport",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 20},
      {"imersium-beam", 20},
      {"imersium-gear-wheel", 20},
      {"rare-metals", 80},
      {"ai-core", 10},
      {"roboport", 1}
    },
    result = "kr-large-roboport"
  },
  {
    type = "recipe",
    name = "kr-small-roboport",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 3},
      {"steel-plate", 10},
      {"rare-metals", 20},
      {"ai-core", 1},
      {"electronic-components", 5}
    },
    result = "kr-small-roboport",
    result_count = 2
  },
  {
    type = "recipe",
    name = "kr-singularity-beacon",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"beacon", 1},
      {"ai-core", 10},
      {"processing-unit", 20},
      {"energy-control-unit", 10}
    },
    result = "kr-singularity-beacon"
  },
  {
    type = "recipe",
    name = "kr-railgun-turret",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"gun-turret", 4},
      {"steel-beam", 10},
      {"processing-unit", 10},
      {"rare-metals", 20},
      {"low-density-structure", 10}
    },
    result = "kr-railgun-turret"
  },
  {
    type = "recipe",
    name = "kr-rocket-turret",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"rocket-launcher", 6},
      {"steel-beam", 10},
      {"rare-metals", 20},
      {"processing-unit", 20},
      {"low-density-structure", 10}
    },
    result = "kr-rocket-turret"
  },
  {
    type = "recipe",
    name = "kr-laser-artillery-turret",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"energy-control-unit", 6},
      {"steel-beam", 10},
      {"rare-metals", 20},
      {"ai-core", 10},
      {"low-density-structure", 10}
    },
    result = "kr-laser-artillery-turret"
  },
  {
    type = "recipe",
    name = "kr-planetary-teleporter",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 10},
      {"imersite-crystal", 4},
      {"energy-control-unit", 8},
      {"teleportation-gps-module", 1}
    },
    result = "kr-planetary-teleporter"
  },
  {
    type = "recipe",
    name = "kr-intergalactic-transceiver",
    energy_required = 600,
    enabled = false,
    ingredients =
    {
      {"imersium-beam", 500},
      {"imersium-plate", 500},
      {"rare-metals", 1000},
      {"energy-control-unit", 500},
      {"ai-core", 300},
      {"concrete", 750}
    },
    result = "kr-intergalactic-transceiver"
  },
  {
    type = "recipe",
    name = "kr-logo",
    energy_required = 666,
    enabled = false,
    ingredients =
    {
      {"iron-stick", 5000},
      {"poop", 1}
    },
    result = "kr-logo"
  }
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
}

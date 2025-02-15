data:extend(
{
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
  -- Crash-site
  {
    type = "item",
    name = "kr-crash-site-lab-repaired",
    localised_name = {"entity-name.kr-damaged-ship-research-computer"},
    localised_description = {"entity-description.kr-crash-site-building"},
    icon = kr_crash_site_icons_path .. "crash-site-lab-repaired.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "crash-site",
    order = "x[crash-site-lab-repaired]",
    place_result = "kr-crash-site-lab-repaired",
    stack_size = 1,
    flags = {"hidden"}
  },
  {
    type = "item",
    name = "kr-crash-site-assembling-machine-1-repaired",
    localised_name = {"entity-name.kr-damaged-ship-assembler"},
    localised_description = {"entity-description.kr-crash-site-building"},
    icon = kr_crash_site_icons_path .. "crash-site-assembling-machine-1-repaired.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "crash-site",
    order = "x[crash-site-assembling-machine-1-repaired]",
    place_result = "kr-crash-site-assembling-machine-1-repaired",
    stack_size = 1,
    flags = {"hidden"}
  },
  {
    type = "item",
    name = "kr-crash-site-assembling-machine-2-repaired",
    localised_name = {"entity-name.kr-damaged-ship-assembler"},
    localised_description = {"entity-description.kr-crash-site-building"},
    icon = kr_crash_site_icons_path .. "crash-site-assembling-machine-2-repaired.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "crash-site",
    order = "x[crash-site-assembling-machine-2-repaired]",
    place_result = "kr-crash-site-assembling-machine-2-repaired",
    stack_size = 1,
    flags = {"hidden"}
  },
  {
    type = "item",
    name = "kr-crash-site-generator",
    localised_name = {"entity-name.kr-damaged-ship-reactor"},
    localised_description = {"entity-description.kr-crash-site-building"},
    icon = kr_crash_site_icons_path .. "crash-site-generator.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "crash-site",
    order = "x[crash-site-generator]",
    place_result = "kr-crash-site-generator",
    stack_size = 1,
    flags = {"hidden"}
  },
  {
    type = "item",
    name = "kr-crash-site-chest-1",
    localised_name = {"entity-name.crash-site-chest-1"},
    localised_description = {"entity-description.kr-crash-site-building"},
    icon = kr_crash_site_icons_path .. "crash-site-chest.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "crash-site",
    order = "x[crash-site-chest]",
    place_result = "kr-crash-site-chest-1",
    stack_size = 1,
    flags = {"hidden"}
  },
  {
    type = "item",
    name = "kr-crash-site-chest-2",
    localised_name = {"entity-name.crash-site-chest-2"},
    localised_description = {"entity-description.kr-crash-site-building"},
    icon = kr_crash_site_icons_path .. "crash-site-chest.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "crash-site",
    order = "x[crash-site-chest]",
    place_result = "kr-crash-site-chest-2",
    stack_size = 1,
    flags = {"hidden"}
  },
  -- K2
    {
    type = "item",
    name = "kr-wind-turbine",
    icon =  kr_entities_icons_path .. "wind-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "00[solar-panel]-a[wind-turbine]",
    place_result = "kr-wind-turbine",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-gas-power-station",
    icon = kr_entities_icons_path .. "gas-power-station.png",
    icon_size = 64,
    icon_mipmaps = 4,
    stack_size = 10,
    subgroup = "energy",
    order = "c[solar-panel]-b[gas-power-station]",
    place_result = "kr-gas-power-station"
  },
  {
    type = "item",
    name = "kr-greenhouse",
    icon =  kr_entities_icons_path .. "greenhouse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "d-g1[greenhouse]",
    place_result = "kr-greenhouse",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-bio-lab",
    icon =  kr_entities_icons_path .. "bio-lab.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "d-g2[bio-lab]",
    place_result = "kr-bio-lab",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-advanced-assembling-machine",
    icon =  kr_entities_icons_path .. "advanced-assembling-machine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "c2[advanced-assembling-machine]",
    place_result = "kr-advanced-assembling-machine",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-tesla-coil",
    icon = kr_entities_icons_path .. "tesla-coil.png",
    icon_size = 64,
    subgroup = "energy-pipe-distribution",
    order = "z-a[energy]-f2[tesla-coil]",
    place_result = "kr-tesla-coil",
    stack_size = 50
  },
  -- -- --
  -- Electric mining drills
  -- -- --
  {
    type = "item",
    name = "kr-electric-mining-drill-mk2",
    icon = kr_entities_icons_path .. "electric-mining-drill-mk2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "a[items]-c[electric-mining-drill-mk2]",
    place_result = "kr-electric-mining-drill-mk2",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-electric-mining-drill-mk3",
    icon = kr_entities_icons_path .. "electric-mining-drill-mk3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "a[items]-d[electric-mining-drill-mk3]",
    place_result = "kr-electric-mining-drill-mk3",
    stack_size = 50
  },
  -- -- --
  -- Research servers
  -- -- --
    {
    type = "item",
    name = "kr-research-server",
    icon =  kr_entities_icons_path .. "research-server.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "f3[research-servers]-a1[research-server]",
    place_result = "kr-research-server",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-quantum-computer",
    icon =  kr_entities_icons_path .. "quantum-computer.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "f3[research-servers]-b1[quantum-computer]",
    place_result = "kr-quantum-computer",
    stack_size = 50
    },
  -- -- --
    {
    type = "item",
    name = "kr-crusher",
    icon =  kr_entities_icons_path .. "crusher.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "d-h1[crusher]",
    place_result = "kr-crusher",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-shelter",
    icon =  kr_entities_icons_path .. "shelter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "storage",
    order = "aaa",
    place_result = "kr-shelter",
    stack_size = 1
    },
  {
    type = "item",
    name = "kr-shelter-plus",
    icon =  kr_entities_icons_path .. "shelter-plus.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "storage",
    order = "aaa",
    place_result = "kr-shelter-plus",
    stack_size = 1
    },
    {
    type = "item",
    name = "kr-mineral-water-pumpjack",
    icon = kr_entities_icons_path .. "mineral-water-pumpjack.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "b[fluids]-b2[mineral-water-pumpjack]",
    place_result = "kr-mineral-water-pumpjack",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-quarry-drill",
    icon =  kr_entities_icons_path .. "quarry-drill.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "a[items]-e[quarry-drill]",
    place_result = "kr-quarry-drill",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-air-purifier",
    icon = kr_entities_icons_path .. "air-purifier.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "z[air-purifier]",
    place_result = "kr-air-purifier",
    stack_size = 50
    },
    {
    type = "item",
    name = "kr-sentinel",
    icon = kr_entities_icons_path .. "sentinel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "radars-and-rockets",
    order = "01[sentinel]",
    place_result = "kr-sentinel",
    stack_size = 50,
  },
    {
    type = "item",
    name = "kr-fuel-refinery",
    icon = kr_entities_icons_path .. "fuel-refinery.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e[fuel-refinery]",
    place_result = "kr-fuel-refinery",
    stack_size = 50,
  },
    {
    type = "item",
    name = "kr-substation-mk2",
    flags = {"hidden"},
    icon = kr_entities_icons_path .. "substation-mk2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-e[substation-mk2]",
    place_result = "kr-substation-mk2",
    stack_size = 50
  },
  -- -- --
  -- NEW LABORATORIES
  -- -- --
    {
    type = "item",
    name = "biusart-lab",
    icon =  kr_entities_icons_path .. "biusart-lab.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[lab]-g2[advanced-lab]",
    place_result = "biusart-lab",
    stack_size = 50
    },
    {
    type = "item",
    name = "kr-singularity-lab",
    icon =  kr_entities_icons_path .. "singularity-lab.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[lab]-g3[kr-singularity-lab]",
    place_result = "kr-singularity-lab",
    stack_size = 25
  },
  -- -- --
  -- FLUID STORAGES
  -- -- --
  {
    type = "item",
    name = "kr-fluid-storage-1",
    icon = kr_entities_icons_path .. "fluid-storages/fluid-storage-1.png",
    stack_size = 50,
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-bb2[storage-tank-2]",
    place_result = "kr-fluid-storage-1"
    },
  {
    type = "item",
    name = "kr-fluid-storage-2",
    icon = kr_entities_icons_path .. "fluid-storages/fluid-storage-2.png",
    stack_size = 50,
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-c[storage-tank-3]",
    place_result = "kr-fluid-storage-2"
    },
  -- -- --
  -- STEEL PIPES
  -- -- --
  {
    type = "item",
    name = "kr-steel-pipe",
    icon = kr_entities_icons_path .. "steel-pipe.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[pipes]-a2[steel-pipe]",
    place_result = "kr-steel-pipe",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-steel-pipe-to-ground",
    icon = kr_entities_icons_path .. "steel-pipe-to-ground.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[pipes]-b2[steel-pipe-to-ground]",
    place_result = "kr-steel-pipe-to-ground",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-steel-pump",
    icon = kr_entities_icons_path .. "steel-pump.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "b[pipes]-c2[steel-pump]",
    place_result = "kr-steel-pump",
    stack_size = 50
  },
  -- -- --
  {
    type = "item",
    name = "kr-electrolysis-plant",
    icon = kr_entities_icons_path .. "electrolysis-plant.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e-a1[electrolysis-plant]",
    place_result = "kr-electrolysis-plant",
    stack_size = 50
    },
    {
    type = "item",
    name = "kr-filtration-plant",
    icon = kr_entities_icons_path .. "filtration-plant.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e-b1[filtration-plant]",
    place_result = "kr-filtration-plant",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-atmospheric-condenser",
    icon = kr_entities_icons_path .. "atmospheric-condenser.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e-c1[atmospheric-condenser]",
    place_result = "kr-atmospheric-condenser",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-fluid-burner",
    icon = kr_entities_icons_path .. "fluid-burner.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e-d1[fluid-burner]",
    place_result = "kr-fluid-burner",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-fusion-reactor",
    icon = kr_entities_icons_path .. "fusion-reactor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "f[nuclear-energy]-b2[fusion-reactor]",
    place_result = "kr-fusion-reactor",
    stack_size = 1
    },
  {
    type = "item",
    name = "kr-advanced-steam-turbine",
    icon = kr_entities_icons_path .. "advanced-steam-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "f[nuclear-energy]-e2[advanced-steam-turbine]",
    place_result = "kr-advanced-steam-turbine",
    stack_size = 25
    },
  {
    type = "item",
    name = "kr-antimatter-reactor",
    icon = kr_entities_icons_path .. "antimatter-reactor.png",
    icon_size = 128,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "z-h[antimatter-reactor]-c[antimatter-reactor]",
    place_result = "kr-antimatter-reactor",
    stack_size = 1
  },
  {
    type = "item",
    name = "kr-advanced-furnace",
    icon = kr_entities_icons_path .. "advanced-furnace.png",
    icon_size = 128,
    icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "c[electric-furnace]-f[advanced-furnace]",
    place_result = "kr-advanced-furnace",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-advanced-chemical-plant",
    icon = kr_entities_icons_path .. "advanced-chemical-plant.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e[chemical-plant]-b[advanced-chemical-plant]",
    place_result = "kr-advanced-chemical-plant",
    stack_size = 50
  },
  -- -- --
  -- Turrets
  -- -- --
  {
    type = "item",
    name = "kr-railgun-turret",
    icon = kr_entities_icons_path .. "railgun-turret.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "railgun-turret",
    order = "a01[railgun-turret]",
    place_result = "kr-railgun-turret",
    stack_size = 50
    },
    {
    type = "item",
    name = "kr-rocket-turret",
    icon = kr_entities_icons_path .. "rocket-turret.png",
    icon_size = 64,
    subgroup = "rocket-turret",
    order = "a02[rocket-turret]",
    place_result = "kr-rocket-turret",
    stack_size = 50
    },
    {
    type = "item",
    name = "kr-laser-artillery-turret",
    icon = kr_entities_icons_path .. "laser-artillery-turret.png",
    icon_size = 64,
    subgroup = "vanilla-turrets",
    order = "b[turret]-e[artillery-turret]-a[laser-artillery-turret]",
    place_result = "kr-laser-artillery-turret",
    stack_size = 50
    },
  -- -- --
  {
    type = "item",
    name = "kr-matter-plant",
    icon = kr_entities_icons_path .. "matter-plant.png",
    icon_size = 128,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "i[matter]-a[matter-plant]",
    place_result = "kr-matter-plant",
    stack_size = 10
  },
  {
    type = "item",
    name = "kr-matter-assembler",
    icon = kr_entities_icons_path .. "matter-assembler.png",
    icon_size = 128,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "i[matter]-b[matter-assembler]",
    place_result = "kr-matter-assembler",
    stack_size = 25
  },
  {
    type = "item",
    name = "kr-stabilizer-charging-station",
    icon = kr_entities_icons_path .. "stabilizer-charging-station.png",
    icon_size = 128,
    icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "i[matter]-c[stabilizer-charging-station]",
    place_result = "kr-stabilizer-charging-station",
    stack_size = 50
  },
  -- -- --
  -- Belts
  -- -- --
  -- Advanced
  {
    type = "item",
    name = "kr-advanced-splitter",
    localised_description = {"entity-description.splitter"},
    icon = kr_entities_icons_path .. "transport-belts/advanced-transport-belt/advanced-splitter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "c[splitter]-d[advanced-splitter]",
    place_result = "kr-advanced-splitter",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-advanced-transport-belt",
    icon = kr_entities_icons_path .. "transport-belts/advanced-transport-belt/advanced-transport-belt.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "a[transport-belt]-d[advanced-transport-belt]",
    place_result = "kr-advanced-transport-belt",
    stack_size = 100
  },
  {
    type = "item",
    name = "kr-advanced-underground-belt",
    icon = kr_entities_icons_path .. "transport-belts/advanced-transport-belt/advanced-underground-belt.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "b[underground-belt]-d[advanced-underground-belt]",
    place_result = "kr-advanced-underground-belt",
    stack_size = 50
  },
  -- Superior
  {
    type = "item",
    name = "kr-superior-splitter",
    localised_description = {"entity-description.splitter"},
    icon = kr_entities_icons_path .. "transport-belts/superior-transport-belt/superior-splitter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "c[splitter]-e[superior-splitter]",
    place_result = "kr-superior-splitter",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-superior-transport-belt",
    icon = kr_entities_icons_path .. "transport-belts/superior-transport-belt/superior-transport-belt.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "a[transport-belt]-e[superior-transport-belt]",
    place_result = "kr-superior-transport-belt",
    stack_size = 100
  },
  {
    type = "item",
    name = "kr-superior-underground-belt",
    icon = kr_entities_icons_path .. "transport-belts/superior-transport-belt/superior-underground-belt.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "b[underground-belt]-e[superior-underground-belt]",
    place_result = "kr-superior-underground-belt",
    stack_size = 50
  },
  -- -- --
  -- Roboports
  -- -- --
  {
    type = "item",
    name = "kr-small-roboport",
    icon = kr_entities_icons_path .. "small-roboport.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "c[signal]-b[small-roboport]",
    place_result = "kr-small-roboport",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-large-roboport",
    icon = kr_entities_icons_path .. "large-roboport.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "c[signal]-c[large-roboport]",
    place_result = "kr-large-roboport",
    stack_size = 50
  },
  -- -- --
  {
    type = "item",
    name = "kr-energy-storage",
    icon = kr_entities_icons_path .. "energy-storage.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "e[accumulator]-b[energy-storage]",
    place_result = "kr-energy-storage",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-advanced-solar-panel",
    icon = kr_entities_icons_path .. "advanced-solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel]-b[advanced-solar-panel]",
    place_result = "kr-advanced-solar-panel",
    stack_size = 50
  },
  -- -- --
  {
    type = "item",
    name = "kr-singularity-beacon",
    icon = kr_entities_icons_path .. "singularity-beacon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module",
    order = "8[singularity-beacon]",
    place_result = "kr-singularity-beacon",
    stack_size = 50
    },
  {
    type = "item",
    name = "kr-intergalactic-transceiver",
    icon = kr_entities_icons_path .. "intergalactic-transceiver.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "radars-and-rockets",
    order = "zzz[rocket-silo]-zzzz[intergalactic-transceiver]",
    place_result = "kr-intergalactic-transceiver",
    stack_size = 1
  },
  -- -- --
  -- Superior inserters
  -- -- --
  {
    type = "item",
    name = "kr-superior-inserter",
    icon = kr_entities_icons_path .. "inserters/superior-inserter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "inserter",
    order = "h1[superior-inserter]",
    place_result = "kr-superior-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-superior-long-inserter",
    icon = kr_entities_icons_path .. "inserters/superior-long-inserter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "inserter",
    order = "h2[superior-long-inserter]",
    place_result = "kr-superior-long-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-superior-filter-inserter",
    icon = kr_entities_icons_path .. "inserters/superior-filter-inserter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "inserter",
    order = "h3[superior-filter-inserter]",
    place_result = "kr-superior-filter-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-superior-long-filter-inserter",
    icon = kr_entities_icons_path .. "inserters/superior-long-filter-inserter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "inserter",
    order = "h4[superior-long-filter-inserter]",
    place_result = "kr-superior-long-filter-inserter",
    stack_size = 50
  },
  -- -- --
  {
    type = "item",
    name = "kr-planetary-teleporter",
    icon = kr_entities_icons_path .. "planetary-teleporter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "z-z-b[kr-planetary-teleporter]",
    place_result = "kr-planetary-teleporter",
    stack_size = 50
  },
  {
    type = "item",
    name = "kr-logo",
    icon = kr_entities_icons_path .. "k-logo.png",
    stack_size = 50,
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel]-e[kr-logo]",
    place_result = "kr-logo"
  }
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
})

if krastorio.general.getSafeSettingValue("kr-containers") then
  data:extend{
    -- -- --
    -- MEDIUM CONTEINERS
    -- -- --
    {
      type = "item",
      name = "kr-medium-active-provider-container",
      icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-active-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "a[medium-active-provider-container]",
      place_result = "kr-medium-active-provider-container"
    },
    {
      type = "item",
      name = "kr-medium-buffer-container",
      icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-buffer-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "b[medium-buffer-container]",
      place_result = "kr-medium-buffer-container"
    },
    {
      type = "item",
      name = "kr-medium-container",
      icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "storage",
      order = "a[items]-d[medium-container]",
      place_result = "kr-medium-container"
    },
    {
      type = "item",
      name = "kr-medium-passive-provider-container",
      icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-passive-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "c[medium-passive-provider-container]",
      place_result = "kr-medium-passive-provider-container"
    },
    {
      type = "item",
      name = "kr-medium-requester-container",
      icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-requester-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "d[medium-requester-container]",
      place_result = "kr-medium-requester-container"
    },
    {
      type = "item",
      name = "kr-medium-storage-container",
      icon = kr_entities_icons_path .. "containers/medium-containers/" .. "medium-storage-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-2",
      order = "e[medium-storage-container]",
      place_result = "kr-medium-storage-container"
    },
    -- -- --
    -- BIG CONTEINERS
    -- -- --
    {
      type = "item",
      name = "kr-big-active-provider-container",
      icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-active-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "a[big-active-provider-container]",
      place_result = "kr-big-active-provider-container"
    },
    {
      type = "item",
      name = "kr-big-buffer-container",
      icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-buffer-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "b[big-buffer-container]",
      place_result = "kr-big-buffer-container"
    },
    {
      type = "item",
      name = "kr-big-container",
      icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "storage",
      order = "a[items]-dz[big-container]",
      place_result = "kr-big-container"
    },
    {
      type = "item",
      name = "kr-big-passive-provider-container",
      icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-passive-provider-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "c[big-passive-provider-container]",
      place_result = "kr-big-passive-provider-container"
    },
    {
      type = "item",
      name = "kr-big-requester-container",
      icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-requester-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "d[big-requester-container]",
      place_result = "kr-big-requester-container"
    },
    {
      type = "item",
      name = "kr-big-storage-container",
      icon = kr_entities_icons_path .. "containers/big-containers/" .. "big-storage-container.png",
      stack_size = 50,
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "kr-logistics-3",
      order = "e[big-storage-container]",
      place_result = "kr-big-storage-container"
    }
  }
end

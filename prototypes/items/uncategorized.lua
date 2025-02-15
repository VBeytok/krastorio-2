local coke_value, coke_acceleration_multiplier, coke_top_speed_multiplier = nil, nil, nil
local fuel_value, fuel_acceleration_multiplier, fuel_top_speed_multiplier = nil, nil, nil
local bio_fuel_value, bio_fuel_acceleration_multiplier, bio_fuel_top_speed_multiplier = nil, nil, nil
local advanced_fuel_value, advanced_fuel_acceleration_multiplier, advanced_fuel_top_speed_multiplier = nil, nil, nil

if krastorio.general.getSafeSettingValue("kr-rebalance-fuels") then
  -- Coke
  coke_value                   = "10MJ"
  coke_acceleration_multiplier = 0.9
  coke_top_speed_multiplier    = 0.9
  
  -- Fuel
  fuel_value                   = "15MJ"
  fuel_acceleration_multiplier = 1.0
  fuel_top_speed_multiplier    = 1.0
  
  -- Bio fuel
  bio_fuel_value                   = "15MJ"
  bio_fuel_acceleration_multiplier = 0.8
  bio_fuel_top_speed_multiplier    = 0.9
  
  -- Advanced fuel
  advanced_fuel_value                   = "15MJ"
  advanced_fuel_acceleration_multiplier = 1.25
  advanced_fuel_top_speed_multiplier    = 1.25
else
  -- Coke
  coke_value                   = "10MJ"
  coke_acceleration_multiplier = 1.1
  coke_top_speed_multiplier    = 1.1
  
  -- Fuel
  fuel_value                   = "15MJ"
  fuel_acceleration_multiplier = 1.3
  fuel_top_speed_multiplier    = 1.1
  
  -- Bio fuel
  bio_fuel_value                   = "15MJ"
  bio_fuel_acceleration_multiplier = 1.2
  bio_fuel_top_speed_multiplier    = 1.1
  
  -- Advanced fuel
  advanced_fuel_value                   = "15MJ"  
  advanced_fuel_acceleration_multiplier = 1.5
  advanced_fuel_top_speed_multiplier    = 1.5
end

data:extend(
{ 
  {
    type = "item",
    name = "biomass",
    icon = kr_items_with_variations_icons_path .. "biomass/biomass.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "biomass/biomass.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "biomass/biomass-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "biomass/biomass-2.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "biomass/biomass-3.png", scale = 0.25, mipmap_count = 4 }
    },
    fuel_category = "chemical",
    fuel_value = "2MJ",
    fuel_emissions_multiplier = 0.8,
    fuel_acceleration_multiplier = 0.8,
    fuel_top_speed_multiplier = 0.8,
    subgroup = "raw-material",
    order = "a[biomass]",
    stack_size = 200
  },
  {
    type = "item",
    name = "fertilizer",
    icon = kr_items_icons_path .. "fertilizer.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "a2[fertilizer]",
    stack_size = 200
  },
  {
    type = "item",
    name = "kr-note-1",
    icon = kr_items_icons_path .. "note.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "other",
    flags = {"hidden"},
    stack_size = 50
  },
  {
    type = "item",
    name = "automation-core",
    icon = kr_items_icons_path .. "automation-core.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "e1[automation-core]",
    stack_size = 200
  },
  {
    type = "item",
    name = "sand",
    icon = kr_items_with_variations_icons_path .. "sand/sand.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "sand/sand.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "sand/sand-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "sand/sand-2.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-resource",
    order = "a[sand]",
    stack_size = 200
  },
  {
    type = "item",
    name = "glass",
    icon = kr_items_icons_path .. "glass.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "a1[glass]",
    stack_size = 200
    },
  {
    type = "item",
    name = "quartz",
    icon = kr_items_with_variations_icons_path .. "quartz/quartz.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "quartz/quartz.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "quartz/quartz-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "quartz/quartz-2.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "quartz/quartz-3.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-material",
    order = "b3[quartz]",
    stack_size = 200
    },
  {
    type = "item",
    name = "silicon",
    icon = kr_items_with_variations_icons_path .. "silicon/silicon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "silicon/silicon.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "silicon/silicon-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "silicon/silicon-2.png", scale = 0.25, mipmap_count = 4 }
    },  
    subgroup = "raw-material",
    order = "b4[silicon]",
    stack_size = 200
    },
  {
    type = "item",
    name = "electronic-components",
    icon = kr_items_with_variations_icons_path .. "electronic-components/electronic-components.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "electronic-components/electronic-components.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "electronic-components/electronic-components-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "electronic-components/electronic-components-2.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "electronic-components/electronic-components-3.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "electronic-components/electronic-components-4.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "electronic-components/electronic-components-5.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "intermediate-product",
    order = "e02[ei-electronic-components]",
    stack_size = 200
  },
  ---
  -- Fuels
  ---
  {
    type = "item",
    name = "coke",
    icon = kr_items_with_variations_icons_path .. "coke/coke.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "coke/coke.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "coke/coke-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "coke/coke-2.png", scale = 0.25, mipmap_count = 4 }
    },
    fuel_category = "chemical",
    fuel_value = coke_value,
    fuel_emissions_multiplier = 1.25,
    fuel_acceleration_multiplier = coke_acceleration_multiplier,
    fuel_top_speed_multiplier = coke_top_speed_multiplier,
    subgroup = "raw-material",
    order = "a1[coke]",
    stack_size = 200
    },
  {
    type = "item",
    name = "fuel",
    icon = kr_items_icons_path .. "fuel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = fuel_value,
    fuel_emissions_multiplier = 1,
    fuel_acceleration_multiplier = fuel_acceleration_multiplier,
    fuel_top_speed_multiplier = fuel_top_speed_multiplier,
    subgroup = "raw-material",
    order = "w01[fuel]",
    stack_size = 200
    },
  {
    type = "item",
    name = "bio-fuel",
    icon = kr_items_icons_path .. "bio-fuel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = bio_fuel_value,
    fuel_emissions_multiplier = 0.5,
    fuel_acceleration_multiplier = bio_fuel_acceleration_multiplier,
    fuel_top_speed_multiplier = bio_fuel_top_speed_multiplier,
    subgroup = "raw-material",
    order = "w02[bio-fuel]",
    stack_size = 200
    },
  {
    type = "item",
    name = "advanced-fuel",
    icon = kr_items_icons_path .. "advanced-fuel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    fuel_category = "vehicle-fuel",
    fuel_value = advanced_fuel_value,
    fuel_emissions_multiplier = 1.75,
    fuel_acceleration_multiplier = advanced_fuel_acceleration_multiplier,
    fuel_top_speed_multiplier = advanced_fuel_top_speed_multiplier,
    subgroup = "raw-material",
    order = "w03[advanced-fuel]",
    stack_size = 200
    },
  ---
  {
    type = "item",
    name = "iron-beam",
    icon = kr_items_icons_path .. "iron-beam.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "c-a2[iron-beam]",
    stack_size = 200
  },
  {
    type = "item",
    name = "steel-gear-wheel",
    icon = kr_items_icons_path .. "steel-gear-wheel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "d-a2[steel-gear-wheel]",
    stack_size = 200
  },
  {
    type = "item",
    name = "steel-beam",
    icon = kr_items_icons_path .. "steel-beam.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "c-a2[steel-beam]",
    stack_size = 200
  },
  {
    type = "item",
    name = "imersium-plate",
    icon = kr_items_icons_path .. "imersium-plate.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "imersium-plate.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "imersium-plate-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "raw-material",
    order = "e00-a2[imersium-plate]",
    stack_size = 200
  },
  {
    type = "item",
    name = "imersium-gear-wheel",
    icon = kr_items_icons_path .. "imersium-gear-wheel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "imersium-gear-wheel.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "imersium-gear-wheel-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "intermediate-product",
    order = "d-a3[imersium-gear-wheel]",
    stack_size = 200
  },
  {
    type = "item",
    name = "imersium-beam",
    icon = kr_items_icons_path .. "imersium-beam.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "imersium-beam.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "imersium-beam-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "intermediate-product",
    order = "c-a3[imersium-beam]",
    stack_size = 200
  },
  {
    type = "item",
    name = "kr-void",
    icon = kr_items_icons_path .. "void.png",
    flags = {"hidden"},   
    icon_size = 64,
    icon_mipmaps = 4,
    order = "zzz[kr-void]",
    stack_size = 999
    },
  {
    type = "item",
    name = "rare-metals",
    icon = kr_items_with_variations_icons_path .. "rare-metals/rare-metals.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "rare-metals/rare-metals.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "rare-metals/rare-metals-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "rare-metals/rare-metals-2.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "rare-metals/rare-metals-3.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "rare-metals/rare-metals-4.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "rare-metals/rare-metals-5.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "rare-metals/rare-metals-6.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "intermediate-product",
    order = "w0[rare-metals]",
    stack_size = 200
  },
  {
    type = "item",
    name = "enriched-iron",
    icon = kr_items_with_variations_icons_path .. "enriched-iron/enriched-iron.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-iron/enriched-iron.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-iron/enriched-iron-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-iron/enriched-iron-2.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-material",
    order = "e05-a[enriched-ores]-a1[enriched-iron]",
    stack_size = 200
    },  
  {
    type = "item",
    name = "enriched-copper",
    icon = kr_items_with_variations_icons_path .. "enriched-copper/enriched-copper.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-copper/enriched-copper.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-copper/enriched-copper-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-copper/enriched-copper-2.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-material",
    order = "e05-a[enriched-ores]-a2[enriched-copper]",
    stack_size = 200
    },
  {
    type = "item",
    name = "enriched-rare-metals",
    icon = kr_items_with_variations_icons_path .. "enriched-rare-metals/enriched-rare-metals.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-rare-metals/enriched-rare-metals.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-rare-metals/enriched-rare-metals-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "enriched-rare-metals/enriched-rare-metals-2.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-material",
    order = "e05-a[enriched-ores]-a3[enriched-rare-metals]",
    stack_size = 200
    },  
  {
    type = "item",
    name = "lithium",
    icon = kr_items_with_variations_icons_path .. "lithium/lithium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "lithium/lithium.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "lithium/lithium-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "lithium/lithium-2.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-material",
    order = "h2[lithium]",
    stack_size = 200
    },
  {
    type = "item",
    name = "lithium-chloride",
    icon = kr_items_with_variations_icons_path .. "lithium-chloride/lithium-chloride.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "lithium-chloride/lithium-chloride.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "lithium-chloride/lithium-chloride-1.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-material",
    order = "h1[lithium-chloride]",
    stack_size = 200
    },
  {
    type = "item",
    name = "imersite-powder",
    icon = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      },
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder-1.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder-1-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      },
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder-2.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-powder/imersite-powder-2-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      }
    },
    subgroup = "raw-material",
    order = "q01[imersite-powder]",
    stack_size = 200
    },
  {
    type = "item",
    name = "imersite-crystal",
    icon = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      },
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-1.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-1-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      },
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-2.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-2-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      },
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-3.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-3-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      },
      {
        layers =
        {
          {
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-4.png",
            scale = 0.25,
            mipmap_count = 4
          },
          {
            draw_as_light = true,
            flags = {"light"},
            blend_mode = "additive",
            tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3},
            size = 64,
            filename = kr_items_with_variations_icons_path .. "imersite-crystal/imersite-crystal-4-light.png",
            scale = 0.25,
            mipmap_count = 4
          }
        }
      }   
    },
    subgroup = "intermediate-product",
    order = "q03[imersite-crystal]",
    stack_size = 50
    },
  {
    type = "item",
    name = "lithium-sulfur-battery",
    icon = kr_items_icons_path .. "lithium-sulfur-battery.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "lithium-sulfur-battery.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "lithium-sulfur-battery-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "raw-material",
    order = "i2[lithium-sulfur-battery]",
    stack_size = 200
  },
  {
    type = "item",
    name = "ai-core",
    icon = kr_items_icons_path .. "ai-core.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "ai-core.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "ai-core-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "intermediate-product",
    order = "h1[ai-core]",
    stack_size = 200
  },
  {
    type = "item",
    name = "pollution-filter",
    icon = kr_items_icons_path .. "pollution-filter.png",
    icon_size = 64,
    icon_mipmaps = 4,       
    subgroup = "intermediate-product",
    order = "w2-a1[pollution-filter]",
    stack_size = 50
  },
  {
    type = "item",
    name = "used-pollution-filter",
    icon = kr_items_icons_path .. "used-pollution-filter.png",
    icon_size = 64,
    icon_mipmaps = 4,       
    subgroup = "intermediate-product",
    order = "w2-a2[used-pollution-filter]",
    stack_size = 50
  },
  {
    type = "item",
    name = "improved-pollution-filter",
    icon = kr_items_icons_path .. "improved-pollution-filter.png",
    icon_size = 64,
    icon_mipmaps = 4,       
    subgroup = "intermediate-product",
    order = "w2-b1[improved-pollution-filter]",
    stack_size = 50
  },
  {
    type = "item",
    name = "used-improved-pollution-filter",
    icon = kr_items_icons_path .. "used-improved-pollution-filter.png",
    icon_size = 64,
    icon_mipmaps = 4,       
    subgroup = "intermediate-product",
    order = "w2-b2[used-improved-pollution-filter]",
    stack_size = 50
  },
  {
    type = "item",
    name = "tritium",
    icon = kr_items_icons_path .. "tritium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "tritium.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "tritium-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "raw-material",
    order = "s[tritium]",
    stack_size = 200
    },
  {
    type = "item",
    name = "empty-dt-fuel",
    icon = kr_items_icons_path .. "empty-dt-fuel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-b1[dt-fuel]-a1[empty-dt-fuel]",
    stack_size = 10
    },
  {
    type = "item",
    name = "dt-fuel",
    icon = kr_items_icons_path .. "dt-fuel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "dt-fuel.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "dt-fuel-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    fuel_category = "fusion-fuel",
    fuel_value = "10GJ",
    burnt_result = "empty-dt-fuel",
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-b1[dt-fuel]-a2[dt-fuel]",
    stack_size = 10
    },
  ---
  {
    type = "item",
    name = "energy-control-unit",
    icon = kr_items_icons_path .. "energy-control-unit.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "energy-control-unit.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "energy-control-unit-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "intermediate-product",
    order = "j1[energy-control-unit]",
    stack_size = 100
    },
  ---
  {
    type = "item",
    name = "matter-stabilizer",
    icon = kr_items_icons_path .. "matter-stabilizer.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "w1[matter-stabilizers]-a1[matter-stabilizer]",
    stack_size = 100
    },
  {
    type = "item",
    name = "charged-matter-stabilizer",
    icon = kr_items_icons_path .. "charged-matter-stabilizer.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "charged-matter-stabilizer.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "charged-matter-stabilizer-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    subgroup = "intermediate-product",
    order = "w1[matter-stabilizers]-a2[charged-matter-stabilizer]",
    stack_size = 100
    },
  {
    type = "item",
    name = "matter-cube",
    icon = kr_items_icons_path .. "matter-cube.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "000[matter]-000[matter-cube]",
    stack_size = 200
    },
  {
    type = "item",
    name = "empty-antimatter-fuel-cell",
    icon = kr_items_icons_path .. "empty-antimatter-fuel-cell.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-b2[antimatter-fuel-cell]-a1[empty-antimatter-fuel-cell]",
    stack_size = 10
    },
  {
    type = "item",
    name = "charged-antimatter-fuel-cell",
    icon = kr_items_icons_path .. "charged-antimatter-fuel-cell.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "charged-antimatter-fuel-cell.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "charged-antimatter-fuel-cell-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },
    fuel_category = "antimatter-fuel",
    fuel_value = "300GJ",
    burnt_result = "empty-antimatter-fuel-cell",
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-b2[antimatter-fuel-cell]-a2[charged-antimatter-fuel-cell]",
    stack_size = 10
    },
  {
    type = "item",
    name = "inserter-parts",
    icon = kr_items_with_variations_icons_path .. "inserter-parts/inserter-parts.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = kr_items_with_variations_icons_path .. "inserter-parts/inserter-parts.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "inserter-parts/inserter-parts-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "inserter-parts/inserter-parts-2.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "inserter-parts/inserter-parts-3.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = kr_items_with_variations_icons_path .. "inserter-parts/inserter-parts-4.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "intermediate-product",
    order = "e01[ei-inserter-parts]",
    stack_size = 200
    },
  {
    type = "item",
    name = "gps-satellite",
    rocket_launch_product = {"teleportation-gps-module", 1},
    icon = kr_items_icons_path .. "gps-satellite.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "gps-satellite.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "gps-satellite-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },    
    subgroup = "intermediate-product",
    order = "u01[a1-gps-satellite]",
    stack_size = 1
  },
  {
    type = "item",
    name = "teleportation-gps-module",
    icon = kr_items_icons_path .. "teleportation-gps-module.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = kr_items_icons_path .. "teleportation-gps-module.png",
          scale = 0.25,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          flags = {"light"},
          size = 64,
          filename = kr_items_icons_path .. "teleportation-gps-module-light.png",
          scale = 0.25,
          mipmap_count = 4
        }
      }
    },  
    subgroup = "intermediate-product",
    order = "u01[a2-teleportation-gps-module]",
    stack_size = 10
  }
})

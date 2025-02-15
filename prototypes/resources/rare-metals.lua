local resource_autoplace = require("__core__/lualib/resource-autoplace")

-- Adding rare metals
data:extend(
{
  {
    type = "resource",
    name = "rare-metals",
    icon = kr_resources_icons_path .. "rare-metals.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    subgroup = "raw-resource",
    tree_removal_probability = 0,
    tree_removal_max_distance = 0,
    minable =
    {
      hardness = 2,
      mining_particle = "stone-particle",
      mining_time = 3,
      result = "raw-rare-metals",
      fluid_amount = 25,
      required_fluid = "chlorine"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "rare-metals",
      order = "d",
      base_density = 1.0,
      base_spots_per_km2 = 0.75,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.25,
      random_spot_size_maximum = 3,
      regular_blob_amplitude_multiplier = 1,
      regular_rq_factor_multiplier = 0.9,
      candidate_spot_count = 22
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages =
    {
      sheet =
      {
        filename = kr_resources_sprites_path .. "rare-metals/rare-metals.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = kr_resources_sprites_path .. "rare-metals/hr-rare-metals.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    stages_effect =
    {
      sheet =
      {
        filename = kr_resources_sprites_path .. "rare-metals/rare-metals-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        animation_speed = 3,
        variation_count = 8,
        draw_as_glow = true,
        hr_version =
        {
          filename = kr_resources_sprites_path .. "rare-metals/hr-rare-metals-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          animation_speed = 3,
          variation_count = 8,
          scale = 0.5,
          draw_as_glow = true
        }
      }
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 5,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,
    map_color = {r=0.6, g=0.3, b=1},
    mining_visualisation_tint = {r=0.258, g=0.960, b=0.529}
  },
  {
    type = "autoplace-control",
    name = "rare-metals",
    localised_name = {"", "[entity=rare-metals] ", {"autoplace-control-names.rare-metals"}},
    order = "k-a",
    richness = true,
    category = "resource"
  },
  {
    type = "noise-layer",
    name = "rare-metals"
  }
})

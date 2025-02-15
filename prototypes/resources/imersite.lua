local resource_autoplace = require("__core__/lualib/resource-autoplace")

-- Adding imersite
data:extend(
{
  {
    type = "resource",
    name = "imersite",
    category = "kr-quarry",
    icon = kr_items_with_variations_icons_path .. "raw-imersite/raw-imersite.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order="a-b-a",
    subgroup = "raw-resource",
    infinite = false,
    highlight = true,
    minimum = 50,
    normal = 350,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 1,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      hardness = 1,
      mining_time = 2,
      result = "raw-imersite"
    },
    collision_box = {{ -3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{ -3.5, -3.5}, {3.5, 3.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "imersite",
      order = "f",
      base_density = 1,
      richness_multiplier = 1,
      richness_multiplier_distance_bonus = 1.5,
      base_spots_per_km2 = 0.2,
      has_starting_area_placement = false,
      random_spot_size_minimum = 0.01,
      random_spot_size_maximum = 0.1,
      regular_blob_amplitude_multiplier = 1,
      richness_post_multiplier = 1.0,
      additional_richness = 350000,
      regular_rq_factor_multiplier = 0.1,
      candidate_spot_count = 22
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
      filename = kr_resources_sprites_path .. "imersite/imersite-rift.png",
      priority = "extra-high",
      width = 250,
      height = 250,
      frame_count = 6,
      variation_count = 1,
      scale = 0.8,
      hr_version =
      {
        filename = kr_resources_sprites_path .. "imersite/hr-imersite-rift.png",
        priority = "extra-high",
        width = 500,
        height = 500,
        frame_count = 6,
        variation_count = 1,
        scale = 0.4,
      }
      }
    },
    stages_effect =
    {
      sheets =
      {
        {
          filename = kr_resources_sprites_path .. "imersite/imersite-rift-glow.png",
          priority = "extra-high",
          width = 250,
          height = 250,
          frame_count = 6,
          variation_count = 1,
          draw_as_glow = true,
          scale = 0.8,
          hr_version =
          {
            filename = kr_resources_sprites_path .. "imersite/hr-imersite-rift-glow.png",
            priority = "extra-high",
            width = 500,
            height = 500,
            frame_count = 6,
            variation_count = 1,
            scale = 0.4,
            draw_as_glow = true
          }
        }
      }
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3.5,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,
    map_color = {r=1, g=0.5, b=1},
    mining_visualisation_tint = {r=0.792, g=0.050, b=0.858},
    map_grid = false
  },
  {
    type = "autoplace-control",
    name = "imersite",
    localised_name = {"", "[entity=imersite] ", {"autoplace-control-names.imersite"}},
    richness = true,
    order = "b-k",
    category = "resource"
  },
  {
    type = "noise-layer",
    name = "imersite"
  }
})

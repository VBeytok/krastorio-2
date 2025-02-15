data:extend(
{ 
  {
    type = "splitter",
    name = "kr-advanced-splitter",
    localised_description = {"entity-description.splitter"},
    icon = kr_entities_icons_path .. "transport-belts/advanced-transport-belt/advanced-splitter.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "kr-advanced-splitter"},
    max_health = 250,
    corpse = "kr-advanced-splitter-remnant",
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},   
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = kr_advanced_transport_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "kr-superior-splitter",
    speed = 0.125,
    animation_speed_coefficient = 28,
    structure =
    {
      north =
      {
        filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/advanced-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = util.by_pixel(6, 0),
        hr_version =
        {
          filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/hr-advanced-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5
        }
      },
      east =
      {
        filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/advanced-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(4, 12),
        hr_version =
        {
          filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/hr-advanced-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 84,
          shift = util.by_pixel(4, 13),
          scale = 0.5
        }
      },
      south =
      {
        filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/advanced-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version =
        {
          filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/hr-advanced-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5
        }
      },
      west =
      {
        filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/advanced-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 44,
        shift = util.by_pixel(6, 12),
        hr_version =
        {
          filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/hr-advanced-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 86,
          shift = util.by_pixel(6, 12),
          scale = 0.5
        }
      }
    },
    structure_patch =
    {
      north = util.empty_sprite(),
      east =
      {
        filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/advanced-splitter-east-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 52,
        shift = util.by_pixel(4, -20),
        hr_version =
        {
          filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/hr-advanced-splitter-east-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 104,
          shift = util.by_pixel(4, -20),
          scale = 0.5
        }
      },
      south = util.empty_sprite(),
      west =
      {
        filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/advanced-splitter-west-top_patch.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 46,
        height = 48,
        shift = util.by_pixel(6, -18),
        hr_version =
        {
          filename = kr_entities_path .. "transport-belts/advanced-transport-belt/splitter/hr-advanced-splitter-west-top_patch.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 96,
          shift = util.by_pixel(6, -18),
          scale = 0.5
        }
      }
    }
  }
})
data:extend(
{  
  {
    type = "generator",
    name = "kr-advanced-steam-turbine",
    icon = kr_entities_icons_path .. "advanced-steam-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "kr-advanced-steam-turbine"},
    max_health = 900,
    corpse = "kr-medium-random-pipes-remnant",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(0, -12),
    effectivity = 2.1,
    fluid_usage_per_tick = 5/3,
    maximum_temperature = 975,
    burns_fluid = false,
    resistances = 
    {
      {type = "physical",percent = 50},
      {type = "fire",percent = 90},
      {type = "impact",percent = 80}
    },
    collision_box = {{-2.25, -3.25}, {2.25, 3.25}},
    selection_box = {{-2.5, -3.5}, {2.5, 3.5}},
    fluid_box =
    {
      base_area = 5,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 4} },
        { type = "input-output", position = {0, -4} }
      },
      production_type = "input-output",
      filter = "steam",
      minimum_temperature = 350.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = kr_entities_path .. "advanced-steam-turbine/advanced-steam-turbine-H.png",
          width = 235,
          height = 134,
          frame_count = 6,
          shift = {0, -0.2},
          line_length = 2,
          hr_version =
          {
            filename = kr_entities_path .. "advanced-steam-turbine/hr-advanced-steam-turbine-H.png",
            width = 469,
            height = 270,
            frame_count = 6,
            shift = {0, -0.2},
            line_length = 2,
            scale = 0.5
          }
        },
        {
          filename = kr_entities_path .. "advanced-steam-turbine/advanced-steam-turbine-sh-H.png",
          width = 258,
          height = 113,
          frame_count = 6,
          shift = {0.575, 0.25},
          line_length = 3,
          draw_as_shadow = true,
          hr_version =
          {
            filename = kr_entities_path .. "advanced-steam-turbine/hr-advanced-steam-turbine-sh-H.png",
            width = 514,
            height = 225,
            frame_count = 6,
            shift = {0.575, 0.25},
            line_length = 3,
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = kr_entities_path .. "advanced-steam-turbine/advanced-steam-turbine-V.png",
          width = 165,
          height = 250,
          frame_count = 6,
          line_length = 6,
          shift = {0.26, 0},
          hr_version =
          {
            filename = kr_entities_path .. "advanced-steam-turbine/hr-advanced-steam-turbine-V.png",
            width = 330,
            height = 500,
            frame_count = 6,
            line_length = 6,
            shift = {0.26, 0},
            scale = 0.5
          }
        },
        {
          filename = kr_entities_path .. "advanced-steam-turbine/advanced-steam-turbine-sh-V.png",
          width = 175,
          height = 213,
          frame_count = 6,
          line_length = 6,
          shift = {0.48, 0.36},
          draw_as_shadow = true,
          hr_version =
          {
            filename = kr_entities_path .. "advanced-steam-turbine/hr-advanced-steam-turbine-sh-V.png",
            width = 350,
            height = 425,
            frame_count = 6,
            line_length = 6,
            shift = {0.48, 0.36},
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    smoke =
    {
      {
        name = "turbine-smoke",
        north_position = {2, -2.6},
        east_position = {2.75, 1.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound = 
    { 
      filename = "__base__/sound/car-metal-impact.ogg", 
      volume = 0.65 
    },
    working_sound =
    {
      sound =
      {
        filename = kr_buildings_sounds_path .. "advanced-steam-turbine.ogg",
        volume = 1.2
      },
      match_speed_to_activity = true
    },
    min_perceived_performance = 0.5,
    performance_to_sound_speedup = 0.75,
    max_power_output = "100MW"
  }
})
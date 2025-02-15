local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{
  {
    type = "burner-generator",
    name = "kr-antimatter-reactor",
    icon = kr_entities_icons_path .. "antimatter-reactor.png",
    icon_size = 128,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 2, result = "kr-antimatter-reactor"},
    max_health = 5000,
    damaged_trigger_effect = hit_effects.entity(),
    corpse = "kr-antimatter-reactor-remnant",
    dying_explosion = "matter-explosion-s",
    effectivity = 5,
    resistances =
    {
      {type = "physical", percent = 60},
      {type = "fire", percent = 90},
      {type = "impact", percent = 90}
    },
    collision_box = {{-4.75, -4.75}, {4.75, 4.75}},
    selection_box = {{-4.95, -4.95}, {4.95, 4.95}},
    fluid_box =
    {
      production_type = "input",
      base_area = 1,
      base_level = -1,
      pipe_connections = {{ type="input", position = {5, 0} }}
    },
    energy_source =
    {
      type = "electric",
      render_no_power_icon = false,
      usage_priority = "secondary-output"
    },
    burner =
    {
      type = "burner",
      fuel_category = "antimatter-fuel",
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      effectivity = 1,
      emissions_per_minute = 200,
      light_flicker =
      {
        minimum_intensity = 0.01,
        maximum_intensity = 0.50,
        derivation_change_frequency = 0.02,
        derivation_change_deviation = 0.02,
        minimum_light_size = 1,
        color = {r=0.459, g=0.031, b=0.447}
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    animation =
    {
      layers =
      {
        {
          filename = kr_entities_path .. "antimatter-reactor/antimatter-reactor-light.png",
          priority = "high",
          width = 330,
          height = 353,
          shift = {0, -0.5},
          frame_count = 1,
          repeat_count = 30,
          animation_speed=0.9,
          scale = 0.96,
          draw_as_light = true,
          blend_mode = "additive",
          hr_version =
          {
            filename = kr_entities_path .. "antimatter-reactor/hr-antimatter-reactor-light.png",
            priority = "high",
            width = 660,
            height = 706,
            shift = {0, -0.5},
            frame_count = 1,
            repeat_count = 30,
            animation_speed=0.9,
            scale = 0.48,
            draw_as_light = true,
            blend_mode = "additive"
          }
        },
        {
          filename = kr_entities_path .. "antimatter-reactor/antimatter-reactor-glow.png",
          priority = "high",
          width = 330,
          height = 353,
          shift = {0, -0.5},
          frame_count = 1,
          repeat_count = 30,
          animation_speed=0.9,
          scale = 0.96,
          blend_mode = "additive-soft",
          draw_as_glow = true,
          fadeout = true,
          hr_version =
          {
            filename = kr_entities_path .. "antimatter-reactor/hr-antimatter-reactor-glow.png",
            priority = "high",
            width = 660,
            height = 706,
            shift = {0, -0.5},
            frame_count = 1,
            repeat_count = 30,
            animation_speed=0.9,
            scale = 0.48,
            blend_mode = "additive-soft",
            draw_as_glow = true,
            fadeout = true
          }
        },
        {
          filename = kr_entities_path .. "antimatter-reactor/antimatter-reactor.png",
          priority = "high",
          scale = scale,
          width = 330,
          height = 353,
          shift = {0, -0.5},
          frame_count = 30,
          line_length = 6,
          animation_speed=0.9,
          scale = 0.96,
          hr_version =
          {
            filename = kr_entities_path .. "antimatter-reactor/hr-antimatter-reactor.png",
            priority = "high",
            scale = scale,
            width = 660,
            height = 706,
            shift = {0, -0.5},
            frame_count = 30,
            line_length = 6,
            animation_speed=0.9,
            scale = 0.48
          }
        },
        {
          filename = kr_entities_path .. "antimatter-reactor/antimatter-reactor-sh.png",
          width = 362,
          height = 315,
          shift = {0.57, 0.27},
          frame_count = 1,
          repeat_count = 30,
          animation_speed=0.9,
          scale = 0.96,
          draw_as_shadow = true,
          hr_version =
          {
            filename = kr_entities_path .. "antimatter-reactor/hr-antimatter-reactor-sh.png",
            width = 724,
            height = 630,
            shift = {0.57, 0.27},
            frame_count = 1,
            repeat_count = 30,
            animation_speed=0.9,
            scale = 0.48,
            draw_as_shadow = true
          }
        }
      }
    },
    working_sound =
    {
      sound =
      {
        {
          filename = kr_buildings_sounds_path .. "antimatter-reactor.ogg",
          volume = 1.25
        }
      }
    },
    open_sound = { filename = kr_sounds_mod .. "buildings/open.ogg", volume = 1 },
    close_sound = { filename = kr_sounds_mod .. "buildings/close.ogg", volume = 1 },
    audible_distance_modifier = 10,
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    max_power_output = "3000MW"
  }
})

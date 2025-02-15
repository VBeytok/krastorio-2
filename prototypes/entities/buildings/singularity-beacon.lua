local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{
  {
    type = "beacon",
    name = "kr-singularity-beacon",
    icon = kr_entities_icons_path .. "singularity-beacon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "kr-singularity-beacon"},
    max_health = 300,
    corpse = "medium-remnants",
    dying_explosion = "matter-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},   
    damaged_trigger_effect = hit_effects.entity(),
    base_picture =
    {
      filename = kr_entities_path .. "singularity-beacon/singularity-beacon.png",
      width = 90,
      height = 90,
      shift = util.by_pixel(0, -5),
      hr_version =
      {
        filename = kr_entities_path .. "singularity-beacon/hr-singularity-beacon.png",
        width = 360,
        height = 360,
        shift = util.by_pixel(0, -5),
        scale = 0.25
      }
    },
    animation =
    {
      layers =
      {
        {
          filename = kr_entities_path .. "singularity-beacon/singularity-beacon-w-light.png",
          width = 48,
          height = 54,
          frame_count = 10,
          line_length = 5,
          shift = util.by_pixel(0, -11.5),
          draw_as_light = true,
          flags = {"light"},
          animation_speed = 0.5,
          hr_version =
          {
            filename = kr_entities_path .. "singularity-beacon/hr-singularity-beacon-w-light.png",
            width = 190,
            height = 214,
            frame_count = 10,
            line_length = 5,
            shift = util.by_pixel(0, -11.5),
            draw_as_light = true,
            flags = {"light"},
            scale = 0.25,
            animation_speed = 0.5
          }
        },
        {
          filename = kr_entities_path .. "singularity-beacon/singularity-beacon-w.png",
          width = 48,
          height = 54,
          frame_count = 10,
          line_length = 5,
          shift = util.by_pixel(0, -11.5),
          animation_speed = 0.5,
          hr_version =
          {
            filename = kr_entities_path .. "singularity-beacon/hr-singularity-beacon-w.png",
            width = 190,
            height = 214,
            frame_count = 10,
            line_length = 5,
            shift = util.by_pixel(0, -11.5),
            scale = 0.25,
            animation_speed = 0.5
          }
        }
      }
    },
    animation_shadow =
    {
      filename = kr_entities_path .. "singularity-beacon/singularity-beacon-ws.png",
      width = 10,
      height = 10,
      frame_count = 10,
      line_length = 5,
      scale = scale,
      scale = 0.5,
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/beacon/beacon-radius-visualization.png",
      priority = "extra-high-no-scale",
      width = 10,
      height = 10
    },    
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "750KW",
    vehicle_impact_sound = sounds.generic_impact,
    allowed_effects = {"consumption", "speed", "pollution"},
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    
    water_reflection =
    {
      pictures =
      {
        filename = kr_entities_path .. "singularity-beacon/singularity-beacon-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 25,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    },
    
    supply_area_distance = 2.0,
    distribution_effectivity = 0.75,
    open_sound = { filename = kr_sounds_mod .. "buildings/open.ogg", volume = 1 },
    close_sound = { filename = kr_sounds_mod .. "buildings/close.ogg", volume = 1 },
    }
})
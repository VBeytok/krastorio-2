local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{
  {
    type = "assembling-machine",
    name = "kr-research-server",    
    icon =  kr_entities_icons_path .. "research-server.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "kr-research-server"},
    damaged_trigger_effect = hit_effects.entity(),
    max_health = 250,
    corpse = "medium-remnants",
    resistances = 
    {
      {type = "physical", percent = 20},
      {type = "fire", percent = 20}
    },
    collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{-1.4, -1.4}, {1.4, 1.4}}, 
    animation =
    {
      layers =
      {
        {
          filename = kr_entities_path .. "research-server/research-server.png",
          priority = "high",
          scale = scale,
          width = 128,
          height = 128,
          shift = {0., -0.2},
          frame_count = 60,
          line_length = 15,
          animation_speed = 0.9,
          hr_version =
          {
            filename = kr_entities_path .. "research-server/hr-research-server.png",
            priority = "high",
            scale = scale,
            width = 256,
            height = 256,
            shift = {0., -0.2},
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            scale = 0.5
          }
        },
        {
          filename = kr_entities_path .. "research-server/research-server-shadow.png",
          priority = "high",
          scale = scale,
          width = 128,
          height = 128,
          draw_as_shadow = true,
          shift = {0., -0.2},
          frame_count = 60,
          line_length = 15,
          animation_speed = 0.9,
          hr_version =
          {
            filename = kr_entities_path .. "research-server/hr-research-server-shadow.png",
            priority = "high",
            scale = scale,
            width = 256,
            height = 256,
            draw_as_shadow = true,
            shift = {0., -0.2},
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            scale = 0.5
          }
        }
      }
    },    
    working_visualisations =
    {
      {
        animation =
        {
          filename = kr_entities_path .. "research-server/research-server-light.png",
          priority = "extra-high",
          scale = scale,
          width = 128,
          height = 128,
          shift = {0., -0.2},
          draw_as_light = true,
          frame_count = 60,
          line_length = 15,
          animation_speed = 0.9,
          hr_version =
          {
            filename = kr_entities_path .. "research-server/hr-research-server-light.png",
            priority = "extra-high",
            scale = scale,
            width = 256,
            height = 256,
            shift = {0., -0.2},
            draw_as_light = true,
            frame_count = 60,
            line_length = 15,
            animation_speed = 0.9,
            scale = 0.5
          }
        }
      },
      {
        light =
        {
          intensity = 0.25,
          size = 1,
          shift = {0.0, 0.0},
          color = {r=0.1, g=0.5, b=1}
        }
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = kr_buildings_sounds_path .. "small-research-server.ogg",
          volume = 0.75
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      apparent_volume = 1.5
    },
    crafting_categories = {"research-data", "t2-tech-cards"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.5
    },
    
    water_reflection =
    {
      pictures =
      {
        filename = kr_entities_path .. "research-server/research-server-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 40,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    },
    
    energy_usage = "250KW",
    ingredient_count = 6,
    module_specification = { module_slots = 2 },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    open_sound = { filename = kr_sounds_mod .. "buildings/open.ogg", volume = 1 },
    close_sound = { filename = kr_sounds_mod .. "buildings/close.ogg", volume = 1 },
  }
})

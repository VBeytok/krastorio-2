local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{  
  {
    type = "assembling-machine",
    name = "kr-filtration-plant",   
    icon = kr_entities_icons_path .. "filtration-plant.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "kr-filtration-plant"},
    max_health = 1000,
    corpse = "kr-big-random-pipes-remnant",
    dying_explosion = "big-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    resistances = 
    {
      {type = "physical",percent = 50},
      {type = "fire",percent = 50},
      {type = "impact",percent = 50}
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = kr_pipe_path,
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -4} }}
      },            
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = kr_pipe_path,
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 4} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-3.25, -3.25}, {3.25, 3.25}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
          {
          filename = kr_entities_path .. "filtration-plant/filtration-plant.png",
          priority = "high",
          width = 230,
          height = 260,
          shift = {0, -0.2},
          frame_count = 1,
          scale = 1,
          hr_version =
          {
            filename = kr_entities_path .. "filtration-plant/hr-filtration-plant.png",
            priority = "high",
            width = 460,
            height = 520,
            shift = {0, -0.2},
            scale = 0.5,
            frame_count = 1,
            scale = 0.5
          }
          },
          {
          filename = kr_entities_path .. "filtration-plant/filtration-plant-sh.png",
          priority = "high",
          width = 249,
          height = 219,
          shift = {0.33, 0.32},
          frame_count = 1,
          scale = 1,
          draw_as_shadow = true,
          hr_version =
          {
            filename = kr_entities_path .. "filtration-plant/hr-filtration-plant-sh.png",
            priority = "high",
            scale = scale,
            width = 498,
            height = 438,
            shift = {0.33, 0.32},
            frame_count = 1,
            scale = 0.5,
            draw_as_shadow = true
          }
          },
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = kr_entities_path .. "filtration-plant/filtration-plant-working.png",
          priority = "high",
          width = 170,
          height = 185,
          shift = {0.3, -0.59},
          frame_count = 30,
          line_length = 6,
          animation_speed=0.6,
          scale = 1,
          hr_version =
          {
            filename = kr_entities_path .. "filtration-plant/hr-filtration-plant-working.png",
            priority = "high",
            width = 340,
            height = 370,
            shift = {0.3, -0.59},
            scale = 0.5,
            frame_count = 30,
            line_length = 6,
            animation_speed=0.6,
            scale = 0.5
          }
        },
      },
      {
        apply_recipe_tint = "primary",
        animation =
        {
          filename = kr_entities_path .. "filtration-plant/filtration-plant-dirty-mask.png",
          width = 78,
          height = 60,
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.6,
          shift = {1.61, -1.02},
          hr_version =
          {
            filename = kr_entities_path .. "filtration-plant/hr-filtration-plant-dirty-mask.png",
            width = 156,
            height = 120,
            scale = 0.5,
            frame_count = 30,
            line_length = 6,
            animation_speed = 0.6,
            shift = {1.61, -1.02}
          }
        }
      },
      {
        apply_recipe_tint = "secondary",
        animation =
        {
          filename = kr_entities_path .. "filtration-plant/filtration-plant-clear-mask.png",
          width = 78,
          height = 60,
          frame_count = 30,
          line_length = 6,
          animation_speed = 0.6,
          shift = {1.61, 1.31},
          hr_version =
          {
            filename = kr_entities_path .. "filtration-plant/hr-filtration-plant-clear-mask.png",
            width = 156,
            height = 120,
            scale = 0.5,
            frame_count = 30,
            line_length = 6,
            animation_speed = 0.6,
            shift = {1.61, 1.31}
          }
        }
      },
    },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound = { filename = kr_buildings_sounds_path .. "filtration-plant.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      apparent_volume = 1.25
    },
    crafting_speed = 1.0,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 5
    },
    crafting_categories = { "fluid-filtration" },
    scale_entity_info_icon = true,
    energy_usage = "500kW",
    ingredient_count = 6,
    module_specification = { module_slots = 2, module_info_icon_shift = {0, 1.7}, module_info_icon_scale = 1 },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
  }
})
local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{  
  {
    type = "furnace",
    name = "kr-air-purifier",   
    icon = kr_entities_icons_path .. "air-purifier.png",
    icon_size = 64,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "kr-air-purifier"},
    result_inventory_size = 1,
    source_inventory_size = 1,
    max_health = 200,
    corpse = "medium-remnants",
    damaged_trigger_effect = hit_effects.entity(),
    dying_explosion = "explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    animation =
    {
      layers =
      {
        {
          filename = kr_entities_path .. "air-purifier/air-purifier.png",
          priority = "high",
          scale = scale,
          width = 75,
          height = 75,
          shift = {0, -0.1},
          frame_count = 16,
          line_length = 4,
          animation_speed=0.5,
          hr_version =
          {
            filename = kr_entities_path .. "air-purifier/hr-air-purifier.png",
            priority = "high",
            scale = scale,
            width = 150,
            height = 150,
            shift = {0, -0.1},
            frame_count = 16,
            line_length = 4,
            animation_speed=0.5,
            scale = 0.5
          }
        },
        {
          filename = kr_entities_path .. "air-purifier/air-purifier-sh.png",
          priority = "high",
          scale = scale,
          width = 82,
          height = 51,
          shift = {0.22, 0.25},
          repeat_count = 16,
          draw_as_shadow = true,
          animation_speed=0.5,
          hr_version =
          {
            filename = kr_entities_path .. "air-purifier/hr-air-purifier-sh.png",
            priority = "high",
            scale = scale,
            width = 164,
            height = 102,
            shift = {0.22, 0.25},
            repeat_count = 16,
            draw_as_shadow = true,
            animation_speed=0.5,
            scale = 0.5
          }
        },
      }
    },
    crafting_categories = {"air-purification"},
    show_recipe_icon = false,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound = { filename = kr_buildings_sounds_path .. "air-purifier.ogg" },    
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      apparent_volume = 1.2   
    },
    crafting_speed = 1.0,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -75
    },
    
    water_reflection =
    {
      pictures =
      {
        filename = kr_entities_path .. "air-purifier/air-purifier-reflection.png",
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
    
    energy_usage = "75kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
  }
})
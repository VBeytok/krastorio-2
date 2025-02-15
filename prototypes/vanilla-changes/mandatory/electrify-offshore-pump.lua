if not mods["aai-industry"] then

  local common_animation_speed = 0.5

  -- Merged custom animation
  local electric_offshore_pump_animation = 
  {
    north =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-glass.png",
          priority = "high",
          width = 18,
          height = 20,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-2, -22),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-glass.png",
            priority = "high",
            width = 36,
            height = 40,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-2, -22),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-legs.png",
          priority = "high",
          width = 60,
          height = 52,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-2, -4),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-legs.png",
            priority = "high",
            width = 114,
            height = 106,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-1, -5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-underwater.png",
          priority = "high",
          width = 52,
          height = 16,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-2, -34),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-underwater.png",
            priority = "high",
            width = 98,
            height = 36,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-1, -32),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 48,
          height = 84,
          shift = util.by_pixel(-2, -16),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 90,
            height = 162,
            shift = util.by_pixel(-1, -15),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-shadow.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 78,
          height = 70,
          shift = util.by_pixel(12, -8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-shadow.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 150,
            height = 134,
            shift = util.by_pixel(13, -7),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    east =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-glass.png",
          priority = "high",
          width = 18,
          height = 18,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(4, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-glass.png",
            priority = "high",
            width = 30,
            height = 32,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(5, -13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-legs.png",
          priority = "high",
          width = 54,
          height = 32,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(4, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-legs.png",
            priority = "high",
            width = 106,
            height = 60,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(4, 13),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-underwater.png",
          priority = "high",
          width = 18,
          height = 38,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(40, 16),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-underwater.png",
            priority = "high",
            width = 40,
            height = 72,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(39, 17),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 64,
          height = 52,
          shift = util.by_pixel(14, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 124,
            height = 102,
            shift = util.by_pixel(15, -2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-shadow.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 88,
          height = 34,
          shift = util.by_pixel(28, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-shadow.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 180,
            height = 66,
            shift = util.by_pixel(27, 8),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    south =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-glass.png",
          priority = "high",
          width = 22,
          height = 12,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-2, -6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-glass.png",
            priority = "high",
            width = 40,
            height = 24,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-1, -6),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-legs.png",
          priority = "high",
          width = 56,
          height = 54,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-2, 6),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-legs.png",
            priority = "high",
            width = 110,
            height = 108,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-2, 6),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-underwater.png",
          priority = "high",
          width = 52,
          height = 26,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-2, 48),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-underwater.png",
            priority = "high",
            width = 98,
            height = 48,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-1, 49),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 48,
          height = 96,
          shift = util.by_pixel(-2, 0),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 92,
            height = 192,
            shift = util.by_pixel(-1, 0),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-shadow.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 80,
          height = 66,
          shift = util.by_pixel(16, 22),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-shadow.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 164,
            height = 128,
            shift = util.by_pixel(15, 23),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    west =
    {
      layers =
      {   
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-glass.png",
          priority = "high",
          width = 16,
          height = 16,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-6, -14),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-glass.png",
            priority = "high",
            width = 30,
            height = 32,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-6, -14),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-legs.png",
          priority = "high",
          width = 54,
          height = 32,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-6, 12),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-legs.png",
            priority = "high",
            width = 108,
            height = 64,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-6, 12),
            scale = 0.5
          }
        },  
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-underwater.png",
          priority = "high",
          width = 20,
          height = 34,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = common_animation_speed,
          shift = util.by_pixel(-40, 18),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-underwater.png",
            priority = "high",
            width = 40,
            height = 72,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = common_animation_speed,
            shift = util.by_pixel(-40, 17),
            scale = 0.5
          }
        },        
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 64,
          height = 52,
          shift = util.by_pixel(-16, -2),
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 124,
            height = 102,
            shift = util.by_pixel(-15, -2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-shadow.png",
          priority = "high",
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 88,
          height = 34,
          shift = util.by_pixel(-4, 8),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-shadow.png",
            priority = "high",
            line_length = 8,
            frame_count = 32,
            animation_speed = common_animation_speed,
            width = 172,
            height = 66,
            shift = util.by_pixel(-3, 8),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    }
  }
  local electric_offshore_pump_working_visualisations =
  {
    {
      north_animation =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_North-fluid.png",
        tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
        line_length = 8,
        frame_count = 32,
        animation_speed = common_animation_speed,
        width = 22,
        height = 20,
        shift = util.by_pixel(-2, -22),
        hr_version = 
        {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_North-fluid.png",
          tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 40,
          height = 40,
          shift = util.by_pixel(-1, -22),
          scale = 0.5
        }
      },
      east_animation =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_East-fluid.png",
        tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
        line_length = 8,
        frame_count = 32,
        animation_speed = common_animation_speed,
        width = 20,
        height = 24,
        shift = util.by_pixel(6, -10),
        hr_version = 
        {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_East-fluid.png",
          tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 38,
          height = 50,
          shift = util.by_pixel(6, -11),
          scale = 0.5
        }
      },
      south_animation =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_South-fluid.png",
        tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
        line_length = 8,
        frame_count = 32,
        animation_speed = common_animation_speed,
        width = 20,
        height = 8,
        shift = util.by_pixel(-2, -4),
        hr_version =
        {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_South-fluid.png",
          tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 36,
          height = 14,
          shift = util.by_pixel(-1, -4),
          scale = 0.5
        }
      },
      west_animation =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump_West-fluid.png",
        tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
        line_length = 8,
        frame_count = 32,
        animation_speed = common_animation_speed,
        width = 20,
        height = 24,
        shift = util.by_pixel(-8, -10),
        hr_version = 
        {
          filename = "__base__/graphics/entity/offshore-pump/hr-offshore-pump_West-fluid.png",
          tint = {r = 0.109, g = 0.639, b = 0.925, a = 0.25 },
          line_length = 8,
          frame_count = 32,
          animation_speed = common_animation_speed,
          width = 36,
          height = 50,
          shift = util.by_pixel(-7, -11),
          scale = 0.5
        }
      }
    }
  }
  
  -- Copy of offshore pump
  local electric_offshore_pump = util.table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
  
  -- Modification to offshore pump copied prototype to be an assembler
  electric_offshore_pump.type = "assembling-machine"
  electric_offshore_pump.name = "kr-electric-offshore-pump"
  if electric_offshore_pump.flags then
    table.insert(electric_offshore_pump.flags, "hidden")
  else
    electric_offshore_pump.flags = {"placeable-neutral","placeable-player", "player-creation", "hidden"}
  end
  electric_offshore_pump.localised_name = {"entity-name.offshore-pump"}
  electric_offshore_pump.localised_description = {"entity-description.offshore-pump"}
  electric_offshore_pump.crafting_speed = 1
  electric_offshore_pump.energy_usage = "19kW"
  electric_offshore_pump.energy_source =
  {
    type = "electric",
    usage_priority = "secondary-input",
    drain = "1kW"
  }
  electric_offshore_pump.crafting_categories = {"kr-electric-offshore-pump"}
  electric_offshore_pump.animation = electric_offshore_pump_animation
  electric_offshore_pump.working_visualisations = electric_offshore_pump_working_visualisations
  electric_offshore_pump.placeable_by = {item = "offshore-pump", count = 1}
  electric_offshore_pump.fixed_recipe = "kr-drain-water"
  electric_offshore_pump.ingredient_count = 1
  electric_offshore_pump.show_recipe_icon = false
  electric_offshore_pump.fluid_boxes = 
  {
    fluid_box =
    {
      base_area = 0.5,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water",
      pipe_connections =
      {
        {
          position = {0, 1},
          type = "output"
        }
      }
    }, 
    off_when_no_fluid_recipe = false
  }

  -- Add new entity
  data:extend(
  {
    -- Crafting category
    {
       type = "recipe-category",
       name = "kr-electric-offshore-pump"
    },
    -- Recipe
    {
      type = "recipe",
      name = "kr-drain-water",
      category = "kr-electric-offshore-pump",
      energy_required = 1,
      enabled = true,
      hidden = true,
      ingredients = {},
      results =
      { 
        {type = "fluid", name = "water", amount = 1250 }
      }
    },
    -- Entity
    electric_offshore_pump
  })

  -- Tooltip Fixes
  data.raw.item["offshore-pump"].localised_description = {"other.offshore-pump-is-electric", {"entity-description.offshore-pump"}}
end
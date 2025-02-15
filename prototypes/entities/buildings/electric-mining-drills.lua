require ("__base__/prototypes/entity/pipecovers")
require ("__base__/prototypes/entity/assemblerpipes")

local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

electric_drill_animation_speed = 0.4
electric_drill_animation_sequence =
{
  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
}

electric_drill_animation_shadow_sequence =
{
  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
}

function electric_mining_drill_smoke()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-smoke.png",
    line_length = 6,
    width = 24,
    height = 38,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    direction_count = 1,
    shift = util.by_pixel(0, 2),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-smoke.png",
      line_length = 6,
      width = 48,
      height = 72,
      frame_count = 30,
      animation_speed = electric_drill_animation_speed,
      direction_count = 1,
      shift = util.by_pixel(0, 3),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_smoke_front()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-smoke-front.png",
    line_length = 6,
    width = 76,
    height = 68,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    direction_count = 1,
    shift = util.by_pixel(-4, 8),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-smoke-front.png",
      line_length = 6,
      width = 148,
      height = 132,
      frame_count = 30,
      animation_speed = electric_drill_animation_speed,
      direction_count = 1,
      shift = util.by_pixel(-3, 9),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_mk2_animation()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill.png",
    line_length = 6,
    width = 98,
    height = 80,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(0, -22),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill.png",
      line_length = 6,
      width = 194,
      height = 154,
      frame_count = 30,
      animation_speed = electric_drill_animation_speed,
      frame_sequence = electric_drill_animation_sequence,
      direction_count = 1,
      shift = util.by_pixel(0, -21),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_mk3_animation()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill.png",
    line_length = 6,
    width = 98,
    height = 80,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(0, -22),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill.png",
      line_length = 6,
      width = 194,
      height = 154,
      frame_count = 30,
      animation_speed = electric_drill_animation_speed,
      frame_sequence = electric_drill_animation_sequence,
      direction_count = 1,
      shift = util.by_pixel(0, -21),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_shadow_animation()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-shadow.png",
    line_length = 7,
    width = 118,
    height = 28,
    frame_count = 21,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_shadow_sequence,
    draw_as_shadow = true,
    shift = util.by_pixel(48, 6),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-shadow.png",
      line_length = 7,
      width = 232,
      height = 50,
      frame_count = 21,
      animation_speed = electric_drill_animation_speed,
      frame_sequence = electric_drill_animation_shadow_sequence,
      draw_as_shadow = true,
      shift = util.by_pixel(49, 7),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_mk2_horizontal_animation()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-horizontal.png",
    line_length = 6,
    width = 54,
    height = 92,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-4, -28),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-horizontal.png",
      line_length = 6,
      width = 104,
      height = 178,
      frame_count = 30,
      animation_speed = electric_drill_animation_speed,
      frame_sequence = electric_drill_animation_sequence,
      direction_count = 1,
      shift = util.by_pixel(-3, -27),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_mk3_horizontal_animation()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-horizontal.png",
    line_length = 6,
    width = 54,
    height = 92,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-4, -28),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-horizontal.png",
      line_length = 6,
      width = 104,
      height = 178,
      frame_count = 30,
      animation_speed = electric_drill_animation_speed,
      frame_sequence = electric_drill_animation_sequence,
      direction_count = 1,
      shift = util.by_pixel(-3, -27),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_horizontal_front_animation()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-horizontal-front.png",
    line_length = 6,
    width = 28,
    height = 66,
    frame_count = 30,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(14, -22),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-horizontal-front.png",
      line_length = 6,
      width = 54,
      height = 136,
      frame_count = 30,
      animation_speed = electric_drill_animation_speed,
      frame_sequence = electric_drill_animation_sequence,
      direction_count = 1,
      shift = util.by_pixel(14, -23),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_horizontal_shadow_animation()
  return
  {
    priority = "high",
    filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-horizontal-shadow.png",
    line_length = 7,
    width = 118,
    height = 68,
    frame_count = 21,
    animation_speed = electric_drill_animation_speed,
    frame_sequence = electric_drill_animation_shadow_sequence,
    draw_as_shadow = true,
    shift = util.by_pixel(48, 6),
    hr_version =
    {
      priority = "high",
      filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-horizontal-shadow.png",
      line_length = 7,
      width = 236,
      height = 138,
      frame_count = 21,
      animation_speed = electric_drill_animation_speed,
      frame_sequence = electric_drill_animation_shadow_sequence,
      draw_as_shadow = true,
      shift = util.by_pixel(48, 5),
      scale = 0.5,
    }
  }
end

function electric_mining_drill_status_colors()
  return
  {
    -- If no_power, idle, no_minable_resources, disabled, insufficient_input or full_output is used, always_draw of corresponding layer must be set to true to draw it in those states.

    no_power = { 0, 0, 0, 0 },                  -- If no_power is not specified or is nil, it defaults to clear color {0,0,0,0}

    idle = { 1, 0, 0, 1 },                      -- If idle is not specified or is nil, it defaults to white.
    no_minable_resources = { 1, 0, 0, 1 },      -- If no_minable_resources, disabled, insufficient_input or full_output are not specified or are nil, they default to idle color.
    insufficient_input = { 1, 1, 0, 1 },
    full_output = { 1, 1, 0, 1 },
    disabled = { 1, 1, 0, 1 },

    working = { 0, 1, 0, 1 },                   -- If working is not specified or is nil, it defaults to white.
    low_power = { 1, 1, 0, 1 },                 -- If low_power is not specified or is nil, it defaults to working color.
  }
end

function electric_mining_drill_status_leds_working_visualisation()
  local led_blend_mode = nil -- "additive"
  local led_tint = {1,1,1,0.5}
  return
  {
    apply_tint = "status",
    always_draw = true,
    draw_as_sprite = true,
    draw_as_light = true,
    north_animation =
    {
      filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-light.png",
      width = 16,
      height = 18,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(26, -70),
      hr_version =
      {
        filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-light.png",
        width = 30,
        height = 32,
        blend_mode = led_blend_mode,
        tint = led_tint,
        shift = util.by_pixel(26, -69),
        scale = 0.5,
      }
    },
    east_animation =
    {
      filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-light.png",
      width = 18,
      height = 16,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(40, -44),
      hr_version =
      {
        filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-light.png",
        width = 32,
        height = 34,
        blend_mode = led_blend_mode,
        tint = led_tint,
        shift = util.by_pixel(41, -45),
        scale = 0.5,
      }
    },
    south_animation =
    {
      filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-light.png",
      width = 16,
      height = 16,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(26, 10),
      hr_version =
      {
        filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-light.png",
        width = 32,
        height = 30,
        blend_mode = led_blend_mode,
        tint = led_tint,
        shift = util.by_pixel(26, 10),
        scale = 0.5,
      }
    },
    west_animation =
    {
      filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-light.png",
      width = 16,
      height = 16,
      blend_mode = led_blend_mode,
      tint = led_tint,
      shift = util.by_pixel(-42, -44),
      hr_version =
      {
        filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-light.png",
        width = 32,
        height = 34,
        blend_mode = led_blend_mode,
        tint = led_tint,
        shift = util.by_pixel(-42, -45),
        scale = 0.5,
      }
    }
  }
end

data:extend(
{   

  {
    type = "mining-drill",
    name = "kr-electric-mining-drill-mk2",
    icon = kr_entities_icons_path .. "electric-mining-drill-mk2.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "kr-electric-mining-drill-mk2"},
    max_health = 350,
    resource_categories = {"basic-solid"},
    corpse = "electric-mining-drill-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    resistances = 
    {
      {type = "physical",percent = 20},
      {type = "fire",percent = 20},
      {type = "impact",percent = 20}
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},    
    input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-2, 0} },
        { position = {2, 0} },
        { position = {0, 2} }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = kr_buildings_sounds_path .. "electric-mining-drill-mk2.ogg", 
        volume = 0.8
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    
    graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 26, south = 26, west = 26 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -12),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N.png",
                line_length = 1,
                width = 194,
                height = 242,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -12),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 38,
              height = 34,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-2, -44),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-output.png",
                line_length = 5,
                width = 72,
                height = 66,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -44),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, -2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-shadow.png",
                line_length = 1,
                width = 274,
                height = 206,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, -3),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 26,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -10),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(30, -11),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 138,
              height = 86,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-shadow.png",
                line_length = 1,
                width = 276,
                height = 170,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(20, 6),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S.png",
                line_length = 1,
                width = 194,
                height = 240,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-shadow.png",
                line_length = 1,
                width = 274,
                height = 204,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, 2),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-30, -12),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-31, -12),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 144,
              height = 86,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(14, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-shadow.png",
                line_length = 1,
                width = 282,
                height = 170,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(15, 6),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.7 - 0.6
        north = { {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.25}, {0, -0.5}, {0, -0.2}, {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.6}, {0, 0.3}, {0, -0.1}, {0, -0.4}, {0, 0}, {0, 0.3} },
        -- Bounds -0.6 - 0.4
        east = { {0, 0}, {0.4, 0}, {0.1, 0}, {-0.3, 0}, {-0.6, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0}, {0, 0}, {-0.35, 0}, {-0.6, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0} },
        -- Bounds -0.7 - 0.5
        south = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.5}, {0, 0.3}, {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.2}, {0, -0.6}, {0, -0.3}, {0, 0.1}, {0, 0.4}, {0, 0}, {0, -0.3} },
        -- Bounds -0.4 - 0.6
        west = { {0, 0}, {-0.4, 0}, {-0.1, 0}, {0.3, 0}, {0.6, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0}, {0, 0}, {0.35, 0}, {0.6, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0} },
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -44),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 58,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(1, -44),
                  scale = 0.5,
                }
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil,
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 28,
                height = 28,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-smoke.png",
                  line_length = 5,
                  width = 52,
                  height = 56,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(25, -12),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-smoke.png",
                  line_length = 5,
                  width = 48,
                  height = 36,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5,
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-26, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 54,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-25, -11),
                  scale = 0.5,
                }
              }
            }
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            priority = "high",
            filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 106,
            height = 94,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(2, 2),
            hr_version =
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-front.png",
              line_length = 1,
              width = 208,
              height = 186,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(3, 2),
              scale = 0.5,
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 42,
                height = 28,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 34),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-output.png",
                  line_length = 5,
                  width = 82,
                  height = 56,
                  frame_count = 5,
                  animation_speed = electric_drill_animation_speed,
                  shift = util.by_pixel(-1, 34),
                  scale = 0.5,
                }
              },
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 86,
                height = 24,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-front.png",
                  line_length = 1,
                  width = 172,
                  height = 42,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 13),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            priority = "high",
            filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 106,
            height = 94,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(-4, 2),
            hr_version =
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-front.png",
              line_length = 1,
              width = 210,
              height = 190,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-4, 1),
              scale = 0.5,
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation(),
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        {
          -- always_draw = true,
          light = {intensity = 1, size = 2, color={r=1, g=1, b=1}},
          north_position = {1, -2.0},
          east_position = {1.5, -1.5},
          south_position = {1, 0.5},
          west_position = {-1.5, -1.5},
        }
      }
    },

    wet_mining_graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 44, south = 44, west = 44 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -12),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet.png",
                line_length = 1,
                width = 194,
                height = 242,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -12),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 38,
              height = 34,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-2, -44),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-output.png",
                line_length = 5,
                width = 72,
                height = 66,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -44),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-shadow.png",
              line_length = 1,
              width = 136,
              height = 110,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-shadow.png",
                line_length = 1,
                width = 276,
                height = 222,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, 1),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-wet.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-wet.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-30, -12),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-31, -12),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-wet-shadow.png",
              line_length = 1,
              width = 144,
              height = 98,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(14, 8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-wet-shadow.png",
                line_length = 1,
                width = 284,
                height = 194,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(15, 8),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-wet.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-wet.png",
                line_length = 1,
                width = 194,
                height = 240,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-wet-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-wet-shadow.png",
                line_length = 1,
                width = 276,
                height = 204,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, 2),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-wet.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-wet.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 26,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -10),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(30, -11),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-wet-shadow.png",
              line_length = 1,
              width = 138,
              height = 98,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-wet-shadow.png",
                line_length = 1,
                width = 276,
                height = 194,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(20, 8),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.5 - 0.6
        north = { {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.25}, {0, -0.5}, {0, -0.2}, {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.6}, {0, 0.3}, {0, -0.1}, {0, -0.4}, {0, 0}, {0, 0.3} },
        -- Bounds -0.4 - 0.4
        east = { {0, 0}, {0.4, 0}, {0, 0}, {-0.25, 0}, {-0.4, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0}, {0, 0}, {-0.35, 0}, {-0.1, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0} },
        -- Bounds -0.7 - 0.5
        south = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.5}, {0, 0.3}, {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.2}, {0, -0.6}, {0, -0.3}, {0, 0.1}, {0, 0.4}, {0, 0}, {0, -0.3} },
        -- Bounds -0.4 - 0.4
        west = { {0, 0}, {-0.4, 0}, {-0, 0}, {0.25, 0}, {0.4, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0}, {0, 0}, {0.35, 0}, {0.1, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0} },
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -44),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 58,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(1, -44),
                  scale = 0.5,
                }
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_mk2_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 28,
                height = 28,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-smoke.png",
                  line_length = 5,
                  width = 52,
                  height = 56,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(25, -12),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-smoke.png",
                  line_length = 5,
                  width = 48,
                  height = 36,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5,
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-26, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 54,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-25, -11),
                  scale = 0.5,
                }
              }
            }
          }
        },

        -- fluid window background (bottom)
        {
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -49,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-window-background-front.png",
                line_length = 1,
                width = 68,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-window-background-front.png",
                  line_length = 1,
                  width = 132,
                  height = 28,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-1, -18),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation = nil,
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-wet-window-background.png",
                line_length = 1,
                width = 68,
                height = 46,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -34),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-wet-window-background.png",
                  line_length = 1,
                  width = 132,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-1, -33),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation = nil,
        },

        -- fluid window background (front)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-window-background.png",
                line_length = 1,
                width = 14,
                height = 12,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-window-background.png",
                  line_length = 1,
                  width = 30,
                  height = 20,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(1, 21),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-wet-window-background-front.png",
                line_length = 1,
                width = 42,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-wet-window-background-front.png",
                  line_length = 1,
                  width = 88,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(11, 0),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-wet-window-background-front.png",
                line_length = 1,
                width = 44,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-wet-window-background-front.png",
                  line_length = 1,
                  width = 86,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-12, 0),
                  scale = 0.5,
                }
              },
            }
          },
        },
        -- fluid base (bottom)
        {
          always_draw = true,
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -48,
          apply_tint = "input-fluid-base-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-fluid-background-front.png",
                line_length = 1,
                width = 66,
                height = 20,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 130,
                  height = 36,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -17),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation = nil,
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-wet-fluid-background.png",
                line_length = 1,
                width = 66,
                height = 48,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -32),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-wet-fluid-background.png",
                  line_length = 1,
                  width = 130,
                  height = 96,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -32),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation = nil
        },

        -- fluid base (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-fluid-background.png",
                line_length = 1,
                width = 14,
                height = 10,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 22),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-fluid-background.png",
                  line_length = 1,
                  width = 28,
                  height = 22,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(2, 21),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-wet-fluid-background-front.png",
                line_length = 1,
                width = 42,
                height = 42,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 82,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(12, -1),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-wet-fluid-background-front.png",
                line_length = 1,
                width = 42,
                height = 42,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 82,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-12, -1),
                  scale = 0.5,
                }
              },
            }
          },
        },

        -- fluid flow (bottom)
        {
          --render_layer = "lower-object-above-shadow",
          secondary_draw_order = -47,
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-fluid-flow-front.png",
                line_length = 1,
                width = 66,
                height = 16,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 130,
                  height = 28,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, -17),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation = nil,
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-wet-fluid-flow.png",
                line_length = 1,
                width = 66,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -32),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-wet-fluid-flow.png",
                  line_length = 1,
                  width = 130,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, -32),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation = nil,
        },

        -- fluid flow (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-fluid-flow.png",
                line_length = 1,
                width = 14,
                height = 10,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 22),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-fluid-flow.png",
                  line_length = 1,
                  width = 26,
                  height = 20,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(2, 22),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-wet-fluid-flow-front.png",
                line_length = 1,
                width = 40,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 84,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(11, 0),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-wet-fluid-flow-front.png",
                line_length = 1,
                width = 42,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 82,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-12, 0),
                  scale = 0.5,
                }
              },
            }
          },
        },

        -- front frame (wet)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-front.png",
                line_length = 1,
                width = 82,
                height = 62,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-front.png",
                  line_length = 1,
                  width = 162,
                  height = 124,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-wet-front.png",
                line_length = 1,
                width = 106,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 2),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-wet-front.png",
                  line_length = 1,
                  width = 210,
                  height = 190,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-4, 1),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 42,
                height = 28,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 34),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-output.png",
                  line_length = 5,
                  width = 82,
                  height = 56,
                  frame_count = 5,
                  animation_speed = electric_drill_animation_speed,
                  shift = util.by_pixel(-1, 34),
                  scale = 0.5,
                }
              },
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-wet-front.png",
                line_length = 1,
                width = 96,
                height = 38,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-wet-front.png",
                  line_length = 1,
                  width = 192,
                  height = 70,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 19),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-wet-front.png",
                line_length = 1,
                width = 106,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 2),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-wet-front.png",
                  line_length = 1,
                  width = 208,
                  height = 186,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(3, 2),
                  scale = 0.5,
                }
              },
            }
          },
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation(),
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        {
          -- always_draw = true,
          light = {intensity = 1, size = 2, color={r=1, g=1, b=1}},
          north_position = {1, -2.0},
          east_position = {1.5, -1.5},
          south_position = {1, 0.5},
          west_position = {-1.5, -1.5},
        }
      }
    },
    
    integration_patch =
    {
      north =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-integration.png",
        line_length = 1,
        width = 116,
        height = 118,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-integration.png",
          line_length = 1,
          width = 230,
          height = 236,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(0, -2),
          repeat_count = 5,
          scale = 0.5,
        }
      },
      east =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-integration.png",
        line_length = 1,
        width = 120,
        height = 104,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(2, 4),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-integration.png",
          line_length = 1,
          width = 238,
          height = 204,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(2, 5),
          repeat_count = 5,
          scale = 0.5,
        }
      },
      south =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-integration.png",
        line_length = 1,
        width = 112,
        height = 114,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-integration.png",
          line_length = 1,
          width = 224,
          height = 228,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(0, -2),
          repeat_count = 5,
          scale = 0.5,
        }
      },
      west =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-integration.png",
        line_length = 1,
        width = 116,
        height = 104,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-2, 4),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-integration.png",
          line_length = 1,
          width = 234,
          height = 202,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(-3, 5),
          repeat_count = 5,
          scale = 0.5,
        }
      }
    },
    
    mining_speed = 0.75,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 10,
      usage_priority = "secondary-input"
    },
    energy_usage = "125kW",
    resource_searching_radius = 3.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    next_upgrade = "kr-electric-mining-drill-mk3",
    fast_replaceable_group = "electric-mining-drill",
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  
-----------------------------------------------------------------------------------------------------------------
  
  {
    type = "mining-drill",
    name = "kr-electric-mining-drill-mk3",
    icon = kr_entities_icons_path .. "electric-mining-drill-mk3.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "kr-electric-mining-drill-mk3"},
    max_health = 400,
    resource_categories = {"basic-solid"},
    corpse = "electric-mining-drill-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    resistances = 
    {
      {type = "physical",percent = 35},
      {type = "fire",percent = 35},
      {type = "impact",percent = 35}
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-2, 0} },
        { position = {2, 0} },
        { position = {0, 2} }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = kr_buildings_sounds_path .. "electric-mining-drill-mk3.ogg", 
        volume = 0.8
      },
      audible_distance_modifier = 0.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    
    graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 26, south = 26, west = 26 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -12),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N.png",
                line_length = 1,
                width = 194,
                height = 242,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -12),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 38,
              height = 34,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-2, -44),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-output.png",
                line_length = 5,
                width = 72,
                height = 66,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -44),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, -2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-shadow.png",
                line_length = 1,
                width = 274,
                height = 206,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, -3),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 26,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -10),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(30, -11),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 138,
              height = 86,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-shadow.png",
                line_length = 1,
                width = 276,
                height = 170,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(20, 6),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S.png",
                line_length = 1,
                width = 194,
                height = 240,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-shadow.png",
                line_length = 1,
                width = 274,
                height = 204,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, 2),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-30, -12),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-31, -12),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 144,
              height = 86,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(14, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-shadow.png",
                line_length = 1,
                width = 282,
                height = 170,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(15, 6),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.7 - 0.6
        north = { {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.25}, {0, -0.5}, {0, -0.2}, {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.6}, {0, 0.3}, {0, -0.1}, {0, -0.4}, {0, 0}, {0, 0.3} },
        -- Bounds -0.6 - 0.4
        east = { {0, 0}, {0.4, 0}, {0.1, 0}, {-0.3, 0}, {-0.6, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0}, {0, 0}, {-0.35, 0}, {-0.6, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0} },
        -- Bounds -0.7 - 0.5
        south = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.5}, {0, 0.3}, {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.2}, {0, -0.6}, {0, -0.3}, {0, 0.1}, {0, 0.4}, {0, 0}, {0, -0.3} },
        -- Bounds -0.4 - 0.6
        west = { {0, 0}, {-0.4, 0}, {-0.1, 0}, {0.3, 0}, {0.6, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0}, {0, 0}, {0.35, 0}, {0.6, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0} },
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -44),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 58,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(1, -44),
                  scale = 0.5,
                }
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil,
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 28,
                height = 28,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-smoke.png",
                  line_length = 5,
                  width = 52,
                  height = 56,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(25, -12),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-smoke.png",
                  line_length = 5,
                  width = 48,
                  height = 36,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5,
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-26, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 54,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-25, -11),
                  scale = 0.5,
                }
              }
            }
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            priority = "high",
            filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 106,
            height = 94,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(2, 2),
            hr_version =
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-front.png",
              line_length = 1,
              width = 208,
              height = 186,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(3, 2),
              scale = 0.5,
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 42,
                height = 28,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 34),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-output.png",
                  line_length = 5,
                  width = 82,
                  height = 56,
                  frame_count = 5,
                  animation_speed = electric_drill_animation_speed,
                  shift = util.by_pixel(-1, 34),
                  scale = 0.5,
                }
              },
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 86,
                height = 24,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-front.png",
                  line_length = 1,
                  width = 172,
                  height = 42,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 13),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            priority = "high",
            filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 106,
            height = 94,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(-4, 2),
            hr_version =
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-front.png",
              line_length = 1,
              width = 210,
              height = 190,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-4, 1),
              scale = 0.5,
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation(),
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        {
          -- always_draw = true,
          light = {intensity = 1, size = 2, color={r=1, g=1, b=1}},
          north_position = {1, -2.0},
          east_position = {1.5, -1.5},
          south_position = {1, 0.5},
          west_position = {-1.5, -1.5},
        }
      }
    },

    wet_mining_graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 44, south = 44, west = 44 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -12),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet.png",
                line_length = 1,
                width = 194,
                height = 242,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -12),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 38,
              height = 34,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-2, -44),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-output.png",
                line_length = 5,
                width = 72,
                height = 66,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-1, -44),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-wet-shadow.png",
              line_length = 1,
              width = 136,
              height = 110,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-wet-shadow.png",
                line_length = 1,
                width = 276,
                height = 222,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, 1),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-wet.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-wet.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-30, -12),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-31, -12),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-wet-shadow.png",
              line_length = 1,
              width = 144,
              height = 98,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(14, 8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-wet-shadow.png",
                line_length = 1,
                width = 284,
                height = 194,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(15, 8),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-wet.png",
              line_length = 1,
              width = 98,
              height = 122,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-wet.png",
                line_length = 1,
                width = 194,
                height = 240,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-wet-shadow.png",
              line_length = 1,
              width = 136,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-wet-shadow.png",
                line_length = 1,
                width = 276,
                height = 204,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(19, 2),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-wet.png",
              line_length = 1,
              width = 98,
              height = 50,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -34),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-wet.png",
                line_length = 1,
                width = 194,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -33),
                repeat_count = 5,
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 26,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -10),
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-output.png",
                line_length = 5,
                width = 50,
                height = 56,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(30, -11),
                scale = 0.5,
              }
            },
            {
              priority = "high",
              filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-wet-shadow.png",
              line_length = 1,
              width = 138,
              height = 98,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(20, 8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-wet-shadow.png",
                line_length = 1,
                width = 276,
                height = 194,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(20, 8),
                repeat_count = 5,
                scale = 0.5,
              }
            }
          }
        },
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.3-0.5 distance
        -- Bounds -0.5 - 0.6
        north = { {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.25}, {0, -0.5}, {0, -0.2}, {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.6}, {0, 0.3}, {0, -0.1}, {0, -0.4}, {0, 0}, {0, 0.3} },
        -- Bounds -0.4 - 0.4
        east = { {0, 0}, {0.4, 0}, {0, 0}, {-0.25, 0}, {-0.4, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0}, {0, 0}, {-0.35, 0}, {-0.1, 0}, {-0.2, 0}, {0.1, 0}, {-0.3, 0} },
        -- Bounds -0.7 - 0.5
        south = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2}, {0, 0.5}, {0, 0.3}, {0, 0}, {0, 0.4}, {0, 0.1}, {0, -0.2}, {0, -0.6}, {0, -0.3}, {0, 0.1}, {0, 0.4}, {0, 0}, {0, -0.3} },
        -- Bounds -0.4 - 0.4
        west = { {0, 0}, {-0.4, 0}, {-0, 0}, {0.25, 0}, {0.4, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0}, {0, 0}, {0.35, 0}, {0.1, 0}, {0.2, 0}, {-0.1, 0}, {0.3, 0} },
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -44),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 58,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(1, -44),
                  scale = 0.5,
                }
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_mk3_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 28,
                height = 28,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-smoke.png",
                  line_length = 5,
                  width = 52,
                  height = 56,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(25, -12),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-smoke.png",
                  line_length = 5,
                  width = 48,
                  height = 36,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5,
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-26, -12),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 54,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-25, -11),
                  scale = 0.5,
                }
              }
            }
          }
        },

        -- fluid window background (bottom)
        {
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -49,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet-window-background-front.png",
                line_length = 1,
                width = 68,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet-window-background-front.png",
                  line_length = 1,
                  width = 132,
                  height = 28,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-1, -18),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation = nil,
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-wet-window-background.png",
                line_length = 1,
                width = 68,
                height = 46,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -34),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-wet-window-background.png",
                  line_length = 1,
                  width = 132,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-1, -33),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation = nil,
        },

        -- fluid window background (front)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet-window-background.png",
                line_length = 1,
                width = 14,
                height = 12,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet-window-background.png",
                  line_length = 1,
                  width = 30,
                  height = 20,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(1, 21),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-wet-window-background-front.png",
                line_length = 1,
                width = 42,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-wet-window-background-front.png",
                  line_length = 1,
                  width = 88,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(11, 0),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-wet-window-background-front.png",
                line_length = 1,
                width = 44,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-wet-window-background-front.png",
                  line_length = 1,
                  width = 86,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-12, 0),
                  scale = 0.5,
                }
              },
            }
          },
        },
        -- fluid base (bottom)
        {
          always_draw = true,
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -48,
          apply_tint = "input-fluid-base-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet-fluid-background-front.png",
                line_length = 1,
                width = 66,
                height = 20,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 130,
                  height = 36,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -17),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation = nil,
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-wet-fluid-background.png",
                line_length = 1,
                width = 66,
                height = 48,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -32),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-wet-fluid-background.png",
                  line_length = 1,
                  width = 130,
                  height = 96,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -32),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation = nil
        },

        -- fluid base (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet-fluid-background.png",
                line_length = 1,
                width = 14,
                height = 10,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 22),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet-fluid-background.png",
                  line_length = 1,
                  width = 28,
                  height = 22,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(2, 21),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-wet-fluid-background-front.png",
                line_length = 1,
                width = 42,
                height = 42,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 82,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(12, -1),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-wet-fluid-background-front.png",
                line_length = 1,
                width = 42,
                height = 42,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 82,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-12, -1),
                  scale = 0.5,
                }
              },
            }
          },
        },

        -- fluid flow (bottom)
        {
          --render_layer = "lower-object-above-shadow",
          secondary_draw_order = -47,
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet-fluid-flow-front.png",
                line_length = 1,
                width = 66,
                height = 16,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 130,
                  height = 28,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, -17),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation = nil,
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-wet-fluid-flow.png",
                line_length = 1,
                width = 66,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -32),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-wet-fluid-flow.png",
                  line_length = 1,
                  width = 130,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, -32),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation = nil,
        },

        -- fluid flow (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet-fluid-flow.png",
                line_length = 1,
                width = 14,
                height = 10,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 22),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet-fluid-flow.png",
                  line_length = 1,
                  width = 26,
                  height = 20,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(2, 22),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-wet-fluid-flow-front.png",
                line_length = 1,
                width = 40,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 84,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(11, 0),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-wet-fluid-flow-front.png",
                line_length = 1,
                width = 42,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-12, 0),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 82,
                  height = 86,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-12, 0),
                  scale = 0.5,
                }
              },
            }
          },
        },

        -- front frame (wet)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-N-wet-front.png",
                line_length = 1,
                width = 82,
                height = 62,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-N-wet-front.png",
                  line_length = 1,
                  width = 162,
                  height = 124,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5,
                }
              },
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-W-wet-front.png",
                line_length = 1,
                width = 106,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 2),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-W-wet-front.png",
                  line_length = 1,
                  width = 210,
                  height = 190,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-4, 1),
                  scale = 0.5,
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 42,
                height = 28,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 34),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-output.png",
                  line_length = 5,
                  width = 82,
                  height = 56,
                  frame_count = 5,
                  animation_speed = electric_drill_animation_speed,
                  shift = util.by_pixel(-1, 34),
                  scale = 0.5,
                }
              },
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-S-wet-front.png",
                line_length = 1,
                width = 96,
                height = 38,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 18),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-S-wet-front.png",
                  line_length = 1,
                  width = 192,
                  height = 70,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 19),
                  scale = 0.5,
                }
              },
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = kr_entities_path .. "electric-mining-drill-mk3/electric-mining-drill-E-wet-front.png",
                line_length = 1,
                width = 106,
                height = 94,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 2),
                hr_version =
                {
                  priority = "high",
                  filename = kr_entities_path .. "electric-mining-drill-mk3/hr-electric-mining-drill-E-wet-front.png",
                  line_length = 1,
                  width = 208,
                  height = 186,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(3, 2),
                  scale = 0.5,
                }
              },
            }
          },
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation(),
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        {
          -- always_draw = true,
          light = {intensity = 1, size = 2, color={r=1, g=1, b=1}},
          north_position = {1, -2.0},
          east_position = {1.5, -1.5},
          south_position = {1, 0.5},
          west_position = {-1.5, -1.5},
        }
      }
    },
    
    integration_patch =
    {
      north =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-N-integration.png",
        line_length = 1,
        width = 116,
        height = 118,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-N-integration.png",
          line_length = 1,
          width = 230,
          height = 236,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(0, -2),
          repeat_count = 5,
          scale = 0.5,
        }
      },
      east =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-E-integration.png",
        line_length = 1,
        width = 120,
        height = 104,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(2, 4),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-E-integration.png",
          line_length = 1,
          width = 238,
          height = 204,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(2, 5),
          repeat_count = 5,
          scale = 0.5,
        }
      },
      south =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-S-integration.png",
        line_length = 1,
        width = 112,
        height = 114,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-S-integration.png",
          line_length = 1,
          width = 224,
          height = 228,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(0, -2),
          repeat_count = 5,
          scale = 0.5,
        }
      },
      west =
      {
        priority = "high",
        filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-W-integration.png",
        line_length = 1,
        width = 116,
        height = 104,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-2, 4),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = kr_entities_path .. "electric-mining-drill-mk2/hr-electric-mining-drill-W-integration.png",
          line_length = 1,
          width = 234,
          height = 202,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(-3, 5),
          repeat_count = 5,
          scale = 0.5,
        }
      }
    },
    
    mining_speed = 1,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 15,
      usage_priority = "secondary-input"
    },
    energy_usage = "150kW",
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = kr_entities_path .. "electric-mining-drill-mk2/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "electric-mining-drill",

    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
})
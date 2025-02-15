local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

local intergalactic_transceiver_light =
{
  intensity = 0.75,
  size = 20,
  shift = {0, -0.5},
  color = {r=1, g=0.5, b=0.75}
}

local activated_intergalactic_transceiver_light =
{ 
      intensity = 1.75,
      size = 30,
      shift = {0, -0.5},
      color = {r=1, g=0.5, b=0.75}
} 
    
local intergalactic_transceiver_animation = 
{
  layers =
  {
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver.png",
      width = 400,
      height = 400,
      frame_count = 1,
      repeat_count = 60,
      shift = {0, -0.8},
      animation_speed = 0.3447,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver.png",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 1,
        repeat_count = 60,
        animation_speed=0.3447,
        shift = {0, -0.8}
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-sh.png",
      priority = "low",
      width = 434,
      height = 313,
      frame_count = 1,
      repeat_count = 60,
      draw_as_shadow = true,
      animation_speed = 0.3447,
      shift = {0.52, 0.5},
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-sh.png",
        priority = "low",
        width = 867,
        height = 626,
        scale = 0.5,
        frame_count = 1,
        repeat_count = 60,
        draw_as_shadow = true,
        animation_speed = 0.3447,
        shift = {0.52, 0.5}
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-charging.png",
      priority = "high",
      width = 400,
      height = 400,
      frame_count = 60,
      line_length = 10,
      animation_speed = 0.3447,
      shift = {0, -0.8},
      draw_as_glow = true,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-charging.png",
        priority = "high",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 60,
        line_length = 10,
        animation_speed = 0.3447,
        shift = {0, -0.8},
        draw_as_glow = true
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-light.png",
      priority = "high",
      width = 400,
      height = 400,
      frame_count = 1,
      repeat_count = 60,
      shift = {0, -0.8},
      draw_as_light = true,
      animation_speed = 0.3447,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-light.png",
        priority = "high",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 1,
        repeat_count = 60,
        animation_speed=0.3447,
        shift = {0, -0.8},
        draw_as_light = true
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-charging-light.png",
      priority = "high",
      width = 400,
      height = 400,
      frame_count = 60,
      line_length = 10,
      animation_speed = 0.3447,
      shift = {0, -0.8},
      draw_as_light = true,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-charging-light.png",
        priority = "high",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 60,
        line_length = 10,
        animation_speed = 0.3447,
        shift = {0, -0.8},
        draw_as_light = true
      }
    }
  }
}



local activated_intergalactic_transceiver_animation = 
{
  layers =
  {
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver.png",
      width = 400,
      height = 400,
      frame_count = 1,
      repeat_count = 60,
      shift = {0, -0.8},
      animation_speed = 0.3447,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver.png",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 1,
        repeat_count = 60,
        animation_speed=0.3447,
        shift = {0, -0.8}
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-sh.png",
      priority = "low",
      width = 434,
      height = 313,
      frame_count = 1,
      repeat_count = 60,
      draw_as_shadow = true,
      animation_speed = 0.3447,
      shift = {0.52, 0.5},
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-sh.png",
        priority = "low",
        width = 867,
        height = 626,
        scale = 0.5,
        frame_count = 1,
        repeat_count = 60,
        draw_as_shadow = true,
        animation_speed = 0.3447,
        shift = {0.52, 0.5}
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-charge.png",
      priority = "high",
      width = 400,
      height = 400,
      frame_count = 60,
      line_length = 10,
      animation_speed = 0.3447,
      shift = {0, -0.8},
      draw_as_glow = true,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-charge.png",
        priority = "high",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 60,
        line_length = 10,
        animation_speed = 0.3447,
        shift = {0, -0.8},
        draw_as_glow = true
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-light.png",
      priority = "high",
      width = 400,
      height = 400,
      frame_count = 1,
      repeat_count = 60,
      shift = {0, -0.8},
      draw_as_light = true,
      animation_speed = 0.3447,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-light.png",
        priority = "high",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 1,
        repeat_count = 60,
        animation_speed=0.3447,
        shift = {0, -0.8},
        draw_as_light = true
      }
    },
    {
      filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-charge-light.png",
      priority = "high",
      width = 400,
      height = 400,
      frame_count = 60,
      line_length = 10,
      animation_speed = 0.3447,
      shift = {0, -0.8},
      draw_as_light = true,
      hr_version =
      {
        filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-charge-light.png",
        priority = "high",
        width = 800,
        height = 800,
        scale = 0.5,
        frame_count = 60,
        line_length = 10,
        animation_speed = 0.3447,
        shift = {0, -0.8},
        draw_as_light = true
      }
    }
  }
}

local intergalactic_transceiver_working_sound =
{
  sound =
  {
    variations =
    {
      {
        filename = kr_buildings_sounds_path .. "intergalactic-transceiver-charge.ogg",
        volume = 1.2
      },
      {
        filename = kr_buildings_sounds_path .. "intergalactic-transceiver-charge.ogg",
        volume = 1.2
      },
      {
        filename = kr_buildings_sounds_path .. "intergalactic-transceiver-charge-morse.ogg",
        volume = 1.2
      }
    }
  },
  idle_sound =
  {
    filename = kr_buildings_sounds_path .. "intergalactic-transceiver.ogg",
    volume = 1
  },
  max_sounds_per_type = 3,
  fade_in_ticks = 10,
  fade_out_ticks = 30
}

data:extend(
{ 
  -- Normal
  {
    type = "accumulator",
    name = "kr-intergalactic-transceiver",
    icon = kr_entities_icons_path .. "intergalactic-transceiver.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral","placeable-player", "player-creation", "not-rotatable"},
    map_color = {r=0.37, g=0.18, b=0.47},
    max_health = 20000,
    minable = {mining_time = 10, result = "kr-intergalactic-transceiver"},
    corpse = "kr-big-random-pipes-remnant",
    dying_explosion = "nuclear-reactor-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    collision_box = {{-5.75, -5.25}, {5.75, 5.25}},
    selection_box = {{-6, -5.5}, {6, 5.5}},
    drawing_box = {{-5.75, -5.25}, {5.75, 5.25}},
    resistances = 
    {
      {type = "physical", percent = 75},
      {type = "fire", percent = 75},
      {type = "impact", percent = 75}
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "30TJ",
      usage_priority = "tertiary",
      input_flow_limit = "60GW",
      output_flow_limit = "0W"
    },
    picture = 
    {
      layers=
      {
        {         
          filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-light.png",
          width = 400,
          height = 400,
          frame_count = 1,
          shift = {0, -0.8},
          draw_as_light = true,
          hr_version =
          {
            filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-light.png",
            width = 800,
            height = 800,
            scale = 0.5,
            frame_count = 1,
            shift = {0, -0.8},
            draw_as_light = true
          }
        },
        {
          filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver.png",
          width = 400,
          height = 400,
          frame_count = 1,
          shift = {0, -0.8},
          hr_version =
          {
            filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver.png",
            width = 800,
            height = 800,
            scale = 0.5,
            frame_count = 1,
            shift = {0, -0.8}
          }
        },
        {
          filename = kr_entities_path .. "intergalactic-transceiver/intergalactic-transceiver-sh.png",
          width = 434,
          height = 313,
          frame_count = 1,
          draw_as_shadow = true,
          shift = {0.52, 0.5},
          hr_version =
          {
            filename = kr_entities_path .. "intergalactic-transceiver/hr-intergalactic-transceiver-sh.png",
            width = 867,
            height = 626,
            scale = 0.5,
            frame_count = 1,
            draw_as_shadow = true,
            shift = {0.52, 0.5}
          }
        }
      
      }
    },
    charge_animation = intergalactic_transceiver_animation,
    discharge_animation = intergalactic_transceiver_animation,
    charge_cooldown = 240,
    discharge_cooldown = 240,
    charge_light =intergalactic_transceiver_light,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = intergalactic_transceiver_working_sound,
    audible_distance_modifier = 30,   
    circuit_wire_connection_point = nil, --circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = nil, --circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 0, --default_circuit_wire_max_distance,
    default_output_signal = {type = "virtual", name = "signal-I"}
  },
  -- Activated
  {
    type = "electric-energy-interface",
    name = "kr-activated-intergalactic-transceiver",
    icon = kr_entities_icons_path .. "intergalactic-transceiver.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"player-creation", "not-rotatable"},
    map_color = {r=0.37, g=0.18, b=0.47},
    max_health = 10000,
    minable = {mining_time = 10, result = "kr-intergalactic-transceiver"},
    corpse = "kr-big-random-pipes-remnant",
    dying_explosion = "nuclear-reactor-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    collision_box = {{-5.75, -5.25}, {5.75, 5.25}},
    selection_box = {{-6, -5.5}, {6, 5.5}},
    drawing_box = {{-5.75, -5.25}, {5.75, 5.25}},
    resistances = 
    {
      {type = "physical", percent = 75},
      {type = "fire", percent = 75},
      {type = "impact", percent = 75}
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10GJ",
      usage_priority = "primary-output",
      input_flow_limit = "10GW",
      output_flow_limit = "10GW",
      render_no_power_icon = false
    },
    energy_production = "10GW",
    energy_usage = "0kW",
    animation = activated_intergalactic_transceiver_animation,
    charge_light = activated_intergalactic_transceiver_light,
    discharge_light = activated_intergalactic_transceiver_light,
    light = activated_intergalactic_transceiver_light,
    continuous_animation = true,
    working_sound = intergalactic_transceiver_working_sound
  }
})

data:extend({  
  {
    type = "lab",
    name = "biusart-lab",
    icon = kr_entities_icons_path .. "biusart-lab.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "biusart-lab"},
    max_health = 150,
    fast_replaceable_group = "lab",
    corpse = "lab-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = 
    {
      intensity = 0.8, 
      size = 4, 
      color = {r = 255, g = 255, b = 255}
    },
    on_animation =
    {
      layers = 
      {
        {         
          filename = kr_entities_path .. "biusart-lab/biusart-lab-anim-light.png",
          width = 75,
          height = 75,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          draw_as_light = true,
          scale = 2*0.64,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-anim-light.png",
            width = 150,
            height = 150,
            frame_count = 29,
            line_length = 10,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            draw_as_light = true,
            scale = 0.64
          }
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-anim.png",
          width = 75,
          height = 75,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          scale = 2*0.64,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-anim.png",
            width = 150,
            height = 150,
            frame_count = 29,
            line_length = 10,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            scale = 0.64
          }
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-anim.png",
          width = 75,
          height = 75,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          scale = 2*0.64,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-anim.png",
            width = 150,
            height = 150,
            frame_count = 29,
            line_length = 10,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            scale = 0.64
          }
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-anim.png",
          width = 75,
          height = 75,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          scale = 2*0.64,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-anim.png",
            width = 150,
            height = 150,
            frame_count = 29,
            line_length = 10,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            scale = 0.64
          }
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-light-anim.png",
          width = 75,
          height = 75,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          scale = 2*0.64,
          blend_mode = "additive-soft",
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-light-anim.png",
            width = 150,
            height = 150,
            frame_count = 29,
            line_length = 10,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            scale = 0.64,
            blend_mode = "additive-soft",
          }
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-light-anim.png",
          width = 75,
          height = 75,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          draw_as_light = true,
          scale = 2*0.64,
          blend_mode = "additive-soft",
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-light-anim.png",
            width = 150,
            height = 150,
            frame_count = 29,
            line_length = 10,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            draw_as_light = true,
            scale = 0.64,
            blend_mode = "additive-soft",
          }
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-shadow.png",
          width = 120,
          height = 120,
          frame_count = 1,
          line_length = 1,
          repeat_count = 29,
          animation_speed = 1,
          shift = {0,-0.20},
          scale = 2*0.75,
          draw_as_shadow = true,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-shadow.png",
            width = 240,
            height = 240,
            frame_count = 1,
            line_length = 1,
            repeat_count = 29,
            animation_speed = 1,
            shift = {0,-0.20},
            scale = 0.75,
            draw_as_shadow = true,
          }
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-ao.png",
          width = 110,
          height = 110,
          frame_count = 1,
          repeat_count = 29,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          scale = 2*0.50,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-ao.png",
            width = 220,
            height = 220,
            frame_count = 1,
            repeat_count = 29,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            scale = 0.50,
          }
        }
      }
    },
    off_animation =
    {
      layers = 
      {
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab.png",
          width = 75,
          height = 75,
          frame_count = 1,
          shift = {0,-0.05},
          scale = 2*0.64,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab.png",
            width = 150,
            height = 150,
            frame_count = 1,
            shift = {0,-0.05},
            scale = 0.64,
          },
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-shadow.png",
          width = 120,
          height = 120,
          frame_count = 1, 
          repeat_count = 1,
          shift = {0,-0.20},
          scale = 2*0.75,
          draw_as_shadow = true,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-shadow.png",
            width = 240,
            height = 240,
            frame_count = 1, 
            repeat_count = 1,
            shift = {0,-0.20},
            scale = 0.75,
            draw_as_shadow = true,
          },
        },
        {
          filename = kr_entities_path .. "biusart-lab/biusart-lab-ao.png",
          width = 110,
          height = 110,
          frame_count = 1,
          repeat_count = 1,
          animation_speed = 1 / 3,
          shift = {0,-0.05},
          scale = 2*0.5,
          hr_version =
          {
            filename = kr_entities_path .. "biusart-lab/hr-biusart-lab-ao.png",
            width = 220,
            height = 220,
            frame_count = 1,
            repeat_count = 1,
            animation_speed = 1 / 3,
            shift = {0,-0.05},
            scale = 0.5,
          },
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = kr_buildings_sounds_path .. "biusart-lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    vehicle_impact_sound = 
    { 
      filename = "__base__/sound/car-metal-impact.ogg", 
      volume = 0.65 
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "250kW",
    researching_speed = 1,
    inputs = {},
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.9}
    }
  } 
})

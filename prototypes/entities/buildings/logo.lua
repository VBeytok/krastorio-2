data:extend(
{
  {
    type = "electric-energy-interface",
    name = "kr-logo",
    icon = kr_entities_icons_path .. "k-logo.png",
    icon_size = 64,
    icon_mipmaps = 4,
    allow_copy_paste = false,
    flags = {"placeable-player", "player-creation", "not-deconstructable", "not-rotatable", "not-blueprintable", "not-repairable", "not-on-map"},
    fast_replaceable_group = "kr-logo",
    minable = {mining_time = 0.5, result = "kr-logo"},
    collision_box = {{-10.75, -1.25}, {10.75, 1.25}},
    selection_box = {{-11.0, -1.5}, {11.0, 1.5}},
    
    animation = 
    
        {
          layers =
          {
            {
              filename = kr_entities_path .. "logo/logo.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              --draw_as_light = true,
              repeat_count = 16,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                --draw_as_light = true,
                repeat_count = 16,
                animation_speed = 0.5
              }
            },
            
            
            {
              filename = kr_entities_path .. "logo/logo-ef.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              --draw_as_light = true,
              frame_count = 16,
              line_length = 2,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo-ef.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                --draw_as_light = true,
                frame_count = 16,
                line_length = 2,
                animation_speed = 0.5
              }
            },
            {
              filename = kr_entities_path .. "logo/logo-efl.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              --draw_as_light = true,
              frame_count = 16,
              line_length = 2,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo-efl.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                --draw_as_light = true,
                frame_count = 16,
                line_length = 2,
                animation_speed = 0.5
              }
            },
            {
              filename = kr_entities_path .. "logo/logo-efl.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              draw_as_light = true,
              frame_count = 16,
              line_length = 2,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo-efl.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                draw_as_light = true,
                frame_count = 16,
                line_length = 2,
                animation_speed = 0.5
              }
            },
            
            {
              filename = kr_entities_path .. "logo/logo-light.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              draw_as_light = true,
              repeat_count = 16,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo-light.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                draw_as_light = true,
                repeat_count = 16,
                animation_speed = 0.5
              }
            },
            {
              filename = kr_entities_path .. "logo/logo-light.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              draw_as_light = true,
              repeat_count = 16,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo-light.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                draw_as_light = true,
                repeat_count = 16,
                animation_speed = 0.5
              }
            },
            {
              filename = kr_entities_path .. "logo/logo-light.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              draw_as_light = true,
              repeat_count = 16,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo-light.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                draw_as_light = true,
                repeat_count = 16,
                animation_speed = 0.5
              }
            },
            
            
            {
              filename = kr_entities_path .. "logo/logo-sh.png",
              priority = "high",
              width = 800,
              height = 150,
              scale = 1,
              --shift = {-0.05, 0},
              draw_as_shadow = true,
              repeat_count = 16,
              animation_speed = 0.5,
              hr_version =
              {
                filename = kr_entities_path .. "logo/hr-logo-sh.png",
                priority = "high",
                width = 1600,
                height = 300,
                scale = 0.5,
                --shift = {-0.05, 0},
                draw_as_shadow = true,
                repeat_count = 16,
                animation_speed = 0.5
              }
            },
          }
        },

    continuous_animation = true,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "666J",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "666W",
      render_no_power_icon = false,
      render_no_network_icon = false
    },
    energy_production = "666W"
  }
}
)
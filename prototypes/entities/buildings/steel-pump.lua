data:extend(
{  
  {
    type = "pump",
    name = "kr-steel-pump",
    icon = kr_entities_icons_path .. "steel-pump.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "kr-steel-pump"},
    max_health = 180,
    fast_replaceable_group = "pump",
    corpse = "1x2-remnants",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fluid_box =
    {
      base_area = 1,
      height = 5,
      pipe_covers = steel_pipecoverspictures,
      pipe_connections =
      {
        { position = {0, -1.5}, type="output" },
        { position = {0, 1.5}, type="input" }
      }
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "50kW",
    pumping_speed = 300,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations =
    {
      north =
      {
        filename = kr_entities_path .. "steel-pump/steel-pump-north.png",
        width = 53,
        height = 79,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(8.000, 7.500),
        hr_version =
        {
          filename = kr_entities_path .. "steel-pump/hr-steel-pump-north.png",
          width = 103,
          height = 164,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
        }
      },
      east =
      {
        filename = kr_entities_path .. "steel-pump/steel-pump-east.png",
        width = 66,
        height = 60,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0, 4),
        hr_version =
        {
          filename = kr_entities_path .. "steel-pump/hr-steel-pump-east.png",
          width = 130,
          height = 109,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
        }
      },
      south =
      {
        filename = kr_entities_path .. "steel-pump/steel-pump-south.png",
        width = 62,
        height = 87,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(13.5, 0.5),
        hr_version =
        {
          filename = kr_entities_path .. "steel-pump/hr-steel-pump-south.png",
          width = 114,
          height = 160,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
        }
      },
      west =
      {
        filename = kr_entities_path .. "steel-pump/steel-pump-west.png",
        width = 69,
        height = 51,
        line_length =8,
        frame_count =32,
        animation_speed = 0.5,
        shift = util.by_pixel(0.5, -0.5),
        hr_version =
        {
          filename = kr_entities_path .. "steel-pump/hr-steel-pump-west.png",
          width = 131,
          height = 111,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          animation_speed = 0.5,
          shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
        }
      }
    },
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = 
    {
      load_animations =
      {
        west =
        {
          [1] =
          {
            standup_base =
            {
              filename = kr_entities_path .. "steel-pump/connector/V-R-135-load-standup-base.png",
              width = 55,
              height = 63,
              line_length =1,
              frame_count =20,
              shift = util.by_pixel(-23.5, -13.5),
              hr_version =
              {
                filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-load-standup-base.png",
                width = 110,
                height = 126,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-23.5, -13.5)
              }
            },
            standup_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-1-load-standup-base-shadow.png",
              width = 79,
              height = 69,
              line_length =1,
              frame_count =20,
              shift = util.by_pixel(-8.5, 8.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-1-load-standup-base-shadow.png",
                width = 157,
                height = 136,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-8.75, 8.5)
              }
            }
          },
          [2] =
          {
            standup_base =
            {
              filename = kr_entities_path .. "steel-pump/connector/V-R-246-load-standup-base.png",
              width = 55,
              height = 74,
              line_length =1,
              frame_count =20,
              shift = util.by_pixel(-23.5, -22),
              hr_version =
              {
                filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-load-standup-base.png",
                width = 110,
                height = 148,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-23.5, -21.5)
              }
            },
            standup_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-2-load-standup-shadow.png",
              width = 78,
              height = 81,
              line_length =1,
              frame_count =16,
              shift = util.by_pixel(-7, -13.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-2-load-standup-shadow.png",
                width = 155,
                height = 162,
                scale = 0.5,
                line_length = 1,
                frame_count = 16,
                shift = util.by_pixel(-6.75, -13.5)
              }
            },
            connector_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-2-load-connect-shadow.png",
              width = 85,
              height = 80,
              line_length =1,
              frame_count =16,
              shift = util.by_pixel(-27.5, -10),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-2-load-connect-shadow.png",
                width = 169,
                height = 160,
                scale = 0.5,
                line_length = 1,
                frame_count = 16,
                shift = util.by_pixel(-27.75, -10)
              }
            }
          },
          [3] =
          {
            standup_base =
            {
              filename = kr_entities_path .. "steel-pump/connector/V-R-135-load-standup-base.png",
              width = 55,
              height = 63,
              line_length =1,
              frame_count =20,
              shift = util.by_pixel(-23.5, -13.5),
              hr_version =
              {
                filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-load-standup-base.png",
                width = 110,
                height = 126,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-23.5, -13.5)
              }
            },
            connector_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-3-load-connect-shadow.png",
              width = 86,
              height = 88,
              line_length =1,
              frame_count =17,
              shift = util.by_pixel(-28, 13),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-3-load-connect-shadow.png",
                width = 171,
                height = 175,
                scale = 0.5,
                line_length = 1,
                frame_count = 17,
                shift = util.by_pixel(-27.75, 12.75)
              }
            }
          },
          [4] =
          {
            standup_base =
            {
              filename = kr_entities_path .. "steel-pump/connector/V-R-246-load-standup-base.png",
              width = 55,
              height = 74,
              line_length =1,
              frame_count =20,
              shift = util.by_pixel(-23.5, -22),
              hr_version =
              {
                filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-load-standup-base.png",
                width = 110,
                height = 148,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-23.5, -21.5)
              }
            },
            standup_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-4-load-standup-shadow.png",
              width = 85,
              height = 81,
              line_length =1,
              frame_count =20,
              shift = util.by_pixel(-6.5, -13.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-4-load-standup-shadow.png",
                width = 168,
                height = 162,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-6.5, -13.5)
              }
            },
            connector_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-4-load-connect-shadow.png",
              width = 85,
              height = 72,
              line_length =1,
              frame_count =16,
              shift = util.by_pixel(-27.5, -14),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-4-load-connect-shadow.png",
                width = 168,
                height = 144,
                scale = 0.5,
                line_length = 1,
                frame_count = 16,
                shift = util.by_pixel(-27.5, -14)
              }
            }
          },
          [5] =
          {
            standup_base =
            {
              filename = kr_entities_path .. "steel-pump/connector/V-R-135-load-standup-base.png",
              width = 55,
              height = 63,
              line_length =1,
              frame_count =20,
              shift = util.by_pixel(-23.5, -13.5),
              hr_version =
              {
                filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-load-standup-base.png",
                width = 110,
                height = 126,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-23.5, -13.5)
              }
            },
            standup_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-5-load-standup-shadow.png",
              width = 85,
              height = 79,
              line_length = 1,
              frame_count = 20,
              shift = util.by_pixel(-6.5, 3.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-5-load-standup-shadow.png",
                width = 168,
                height = 157,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-6.5, 3.75)
              }
            },
            connector_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-5-load-connect-shadow.png",
              width = 86,
              height = 80,
              line_length = 1,
              frame_count = 16,
              shift = util.by_pixel(-27, 9),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-5-load-connect-shadow.png",
                width = 172,
                height = 158,
                scale = 0.5,
                line_length = 1,
                frame_count = 16,
                shift = util.by_pixel(-27.5, 9)
              }
            }
          },
          [6] =
          {
            standup_base =
            {
              filename = kr_entities_path .. "steel-pump/connector/V-R-246-load-standup-base.png",
              width = 55,
              height = 74,
              line_length = 1,
              frame_count = 20,
              shift = util.by_pixel(-23.5, -22),
              hr_version =
              {
                filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-load-standup-base.png",
                width = 110,
                height = 148,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-23.5, -21.5)
              }
            },
            standup_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-6-load-standup-shadow.png",
              width = 85,
              height = 81,
              line_length = 1,
              frame_count = 20,
              shift = util.by_pixel(-6.5, -13.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-6-load-standup-shadow.png",
                width = 170,
                height = 162,
                scale = 0.5,
                line_length = 1,
                frame_count = 20,
                shift = util.by_pixel(-7, -13.5)
              }
            },
            connector_shadow =
            {
              filename = "__base__/graphics/entity/pump/connector/V-R-6-load-connect-shadow.png",
              width = 88,
              height = 66,
              line_length =1,
              frame_count =16,
              shift = util.by_pixel(-27, -17),
              hr_version =
              {
                filename = "__base__/graphics/entity/pump/connector/hr-V-R-6-load-connect-shadow.png",
                width = 174,
                height = 131,
                scale = 0.5,
                line_length = 1,
                frame_count = 16,
                shift = util.by_pixel(-27, -16.75)
              }
            }
          }
        },
        north =
        {
        [1] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/H-B-123456-load-standup-base.png",
        width = 46,
        height = 80,
        line_length =1,
        frame_count =20,
        shift = util.by_pixel(0, -62),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-load-standup-base.png",
        width = 91,
        height = 160,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(-0.25, -62)
        }
        },
        standup_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-1-load-standup-shadow.png",
        width = 64,
        height = 80,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(18, -52),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-1-load-standup-shadow.png",
        width = 126,
        height = 158,
        scale = 0.5,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(18, -52)
        }
        },
        connector_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-1-load-connect-shadow.png",
        width = 65,
        height = 90,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(26.5, -66),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-1-load-connect-shadow.png",
        width = 129,
        height = 181,
        scale = 0.5,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(26.75, -66.25)
        }
        }
        },
        [2] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/H-B-123456-load-standup-base.png",
        width = 46,
        height = 80,
        line_length = 1,
        frame_count =20,
        shift = util.by_pixel(0, -62),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-load-standup-base.png",
        width = 91,
        height = 160,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(-0.25, -62)
        }
        },
        standup_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-2-load-standup-shadow.png",
        width = 67,
        height = 90,
        line_length =1,
        frame_count =20,
        shift = util.by_pixel(16.5, -48),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-2-load-standup-shadow.png",
        width = 133,
        height = 180,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(16.75, -47.5)
        }
        },
        connector_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-2-load-connect-shadow.png",
        width = 72,
        height = 90,
        line_length =1,
        frame_count =16,
        shift = util.by_pixel(16, -65),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-2-load-connect-shadow.png",
        width = 143,
        height = 178,
        scale = 0.5,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(16.25, -65)
        }
        }
        },
        [3] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/H-B-123456-load-standup-base.png",
        width = 46,
        height = 80,
        line_length =1,
        frame_count =20,
        shift = util.by_pixel(0, -62),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-load-standup-base.png",
        width = 91,
        height = 160,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(-0.25, -62)
        }
        },
        standup_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-3-load-standup-shadow.png",
        width = 67,
        height = 90,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(16.5, -48),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-3-load-standup-shadow.png",
        width = 133,
        height = 180,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(16.75, -47.5)
        }
        },
        connector_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-3-load-connect-shadow.png",
        width = 52,
        height = 91,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(20, -66.5),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-3-load-connect-shadow.png",
        width = 103,
        height = 181,
        scale = 0.5,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(20.25, -66.25)
        }
        }
        },
        [4] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/H-B-123456-load-standup-base.png",
        width = 46,
        height = 80,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(0, -62),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-load-standup-base.png",
        width = 91,
        height = 160,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(-0.25, -62)
        }
        }
        },
        [5] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/H-B-123456-load-standup-base.png",
        width = 46,
        height = 80,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(0, -62),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-load-standup-base.png",
        width = 91,
        height = 160,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(-0.25, -62)
        }
        },
        standup_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-5-load-standup-shadow.png",
        width = 67,
        height = 90,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(16.5, -48),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-5-load-standup-shadow.png",
        width = 133,
        height = 181,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(16.75, -47.75)
        }
        },
        connector_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-5-load-connect-shadow.png",
        width = 52,
        height = 89,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(20, -67.5),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-5-load-connect-shadow.png",
        width = 103,
        height = 177,
        scale = 0.5,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(20.25, -67.25)
        }
        }
        },
        [6] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/H-B-123456-load-standup-base.png",
        width = 46,
        height = 80,
        line_length =1,
        frame_count =20,
        shift = util.by_pixel(0, -62),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-load-standup-base.png",
        width = 91,
        height = 160,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(-0.25, -62)
        }
        },
        standup_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-6-load-standup-shadow.png",
        width = 67,
        height = 91,
        line_length =1,
        frame_count =20,
        shift = util.by_pixel(16.5, -48.5),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-6-load-standup-shadow.png",
        width = 133,
        height = 182,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(16.75, -48)
        }
        },
        connector_shadow =
        {
        filename = "__base__/graphics/entity/pump/connector/H-B-6-load-connect-shadow.png",
        width = 72,
        height = 90,
        line_length =1,
        frame_count =16,
        shift = util.by_pixel(16, -65),
        hr_version =
        {
        filename = "__base__/graphics/entity/pump/connector/hr-H-B-6-load-connect-shadow.png",
        width = 143,
        height = 178,
        scale = 0.5,
        line_length = 1,
        frame_count = 16,
        shift = util.by_pixel(16.25, -65)
        }
        }
        }
        },
        east =
        {
        [1] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/V-L-135-load-standup-base.png",
        width = 55,
        height = 63,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(23.5, -16.5),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-V-L-135-load-standup-base.png",
        width = 110,
        height = 127,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(23.5, -16.25)
        }
        }
        },
        [2] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/V-L-2-load-standup-base.png",
        width = 55,
        height = 73,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(23.5, -24.5),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-V-L-2-load-standup-base.png",
        width = 110,
        height = 148,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(23.5, -24.5)
        }
        }
        },
        [3] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/V-L-135-load-standup-base.png",
        width = 55,
        height = 63,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(23.5, -16.5),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-V-L-135-load-standup-base.png",
        width = 110,
        height = 127,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(23.5, -16.25)
        }
        }
        },
        [4] = {},
        [5] =
        {
        standup_base =
        {
        filename = kr_entities_path .. "steel-pump/connector/V-L-135-load-standup-base.png",
        width = 55,
        height = 63,
        line_length =1,
        frame_count =20,
        shift = util.by_pixel(23.5, -16.5),
        hr_version =
        {
        filename = kr_entities_path .. "steel-pump/connector/hr-V-L-135-load-standup-base.png",
        width = 110,
        height = 127,
        scale = 0.5,
        line_length = 1,
        frame_count = 20,
        shift = util.by_pixel(23.5, -16.25)
        }
        }
        },
        [6] = {}
        },
        south =
        {
        [1] = {},
        [2] = {},
        [3] = {},
        [4] = {},
        [5] = {},
        [6] = {}
        }
      },
      unload_animations =
      {
      west =
      {
      [1] =
      {
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-135-unload-standup-top.png",
      width = 61,
      height = 35,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.5, -31.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-135-unload-standup-top.png",
      width = 123,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.25, -31.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-1-unload-standup-shadow.png",
      width = 53,
      height = 63,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(33.5, 4.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-1-unload-standup-shadow.png",
      width = 106,
      height = 126,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(33.5, 4.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-1-unload-connect.png",
      width = 54,
      height = 60,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(46, -22),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-1-unload-connect.png",
      width = 106,
      height = 119,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(46, -22.25)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-1-unload-connect-shadow.png",
      width = 46,
      height = 46,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(61, -2),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-1-unload-connect-shadow.png",
      width = 92,
      height = 90,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(61, -2)
      }
      }
      },
      [2] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-246-unload-standup-base.png",
      width = 55,
      height = 73,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(23.5, -24.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-246-unload-standup-base.png",
      width = 110,
      height = 148,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(23.5, -24.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-246-unload-standup-top.png",
      width = 60,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(19, -41.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-246-unload-standup-top.png",
      width = 121,
      height = 110,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.75, -41.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-2-unload-standup-shadow.png",
      width = 48,
      height = 81,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(31, -16.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-2-unload-standup-shadow.png",
      width = 96,
      height = 163,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(31, -16.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-2-unload-connect.png",
      width = 54,
      height = 51,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(45, -49.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-2-unload-connect.png",
      width = 107,
      height = 102,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(45.25, -49.5)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-2-unload-connect-shadow.png",
      width = 44,
      height = 35,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(57, -40.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-2-unload-connect-shadow.png",
      width = 88,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(57, -40.5)
      }
      }
      },
      [3] =
      {
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-135-unload-standup-top.png",
      width = 61,
      height = 35,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.5, -31.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-135-unload-standup-top.png",
      width = 123,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.25, -31.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-3-unload-standup-shadow.png",
      width = 48,
      height = 71,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(31, -1.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-3-unload-standup-shadow.png",
      width = 96,
      height = 142,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(31, -1.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-3-unload-connect.png",
      width = 53,
      height = 53,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(45.5, -25.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-3-unload-connect.png",
      width = 106,
      height = 105,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(45, -25.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-3-unload-connect-shadow.png",
      width = 40,
      height = 39,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(57, -18.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-3-unload-connect-shadow.png",
      width = 80,
      height = 78,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(56.5, -18.5)
      }
      }
      },
      [4] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-246-unload-standup-base.png",
      width = 55,
      height = 73,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(23.5, -24.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-246-unload-standup-base.png",
      width = 110,
      height = 148,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(23.5, -24.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-246-unload-standup-top.png",
      width = 60,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(19, -41.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-246-unload-standup-top.png",
      width = 121,
      height = 110,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.75, -41.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-4-unload-standup-shadow.png",
      width = 48,
      height = 82,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(31, -16),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-4-unload-standup-shadow.png",
      width = 95,
      height = 163,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(30.75, -15.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-4-unload-connect.png",
      width = 55,
      height = 43,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(45.5, -51.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-4-unload-connect.png",
      width = 109,
      height = 87,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(45.75, -51.75)
      }
      }
      },
      [5] =
      {
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-135-unload-standup-top.png",
      width = 61,
      height = 35,
      line_length =1,
      frame_count =19,
      shift = util.by_pixel(18.5, -31.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-135-unload-standup-top.png",
      width = 123,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.25, -31.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-5-unload-standup-shadow.png",
      width = 50,
      height = 79,
      line_length =1,
      frame_count =20,
      shift = util.by_pixel(32, 0.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-5-unload-standup-shadow.png",
      width = 100,
      height = 158,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(32, 0.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-5-unload-connect.png",
      width = 54,
      height = 45,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(46, -29.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-5-unload-connect.png",
      width = 108,
      height = 90,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(46, -29.5)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-5-unload-connect-shadow.png",
      width = 44,
      height = 42,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(54, -17),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-5-unload-connect-shadow.png",
      width = 86,
      height = 84,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(54, -17)
      }
      }
      },
      [6] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-246-unload-standup-base.png",
      width = 55,
      height = 73,
      line_length =1,
      frame_count =20,
      shift = util.by_pixel(23.5, -24.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-246-unload-standup-base.png",
      width = 110,
      height = 148,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(23.5, -24.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-246-unload-standup-top.png",
      width = 60,
      height = 55,
      line_length =1,
      frame_count =19,
      shift = util.by_pixel(19, -41.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-246-unload-standup-top.png",
      width = 121,
      height = 110,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(18.75, -41.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-6-unload-standup-shadow.png",
      width = 72,
      height = 81,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(43, -16.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-6-unload-standup-shadow.png",
      width = 145,
      height = 161,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(43.25, -16.25)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-L-6-unload-connect.png",
      width = 54,
      height = 35,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(45, -54.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-L-6-unload-connect.png",
      width = 107,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(45.25, -55)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-L-6-unload-connect-shadow.png",
      width = 43,
      height = 67,
      line_length =1,
      frame_count =18,
      shift = util.by_pixel(55.5, -17.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-L-6-unload-connect-shadow.png",
      width = 86,
      height = 132,
      scale = 0.5,
      line_length = 1,
      frame_count = 18,
      shift = util.by_pixel(55.5, -17.5)
      }
      }
      }
      },
      north =
      {
      [1] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-base.png",
      width = 46,
      height = 54,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, 16),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-base.png",
      width = 91,
      height = 107,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, 15.75)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-top.png",
      width = 22,
      height = 55,
      line_length =1,
      frame_count =19,
      shift = util.by_pixel(0, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-top.png",
      width = 46,
      height = 109,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.75)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-1-unload-standup-shadow.png",
      width = 39,
      height = 31,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(2.5, 18.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-1-unload-standup-shadow.png",
      width = 76,
      height = 61,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(2.5, 18.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-135-unload-connect.png",
      width = 45,
      height = 50,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(3.5, 1),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-135-unload-connect.png",
      width = 89,
      height = 99,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(3.75, 0.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-1-unload-connect-shadow.png",
      width = 50,
      height = 27,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(10, 16.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-1-unload-connect-shadow.png",
      width = 101,
      height = 53,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(9.75, 16.75)
      }
      }
      },
      [2] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-base.png",
      width = 46,
      height = 54,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, 16),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-base.png",
      width = 91,
      height = 107,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, 15.75)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-top.png",
      width = 22,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-top.png",
      width = 46,
      height = 109,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.75)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-2-unload-standup-shadow.png",
      width = 43,
      height = 31,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(4.5, 18.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-2-unload-standup-shadow.png",
      width = 86,
      height = 60,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(4.5, 18.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-246-unload-connect.png",
      width = 38,
      height = 49,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-1, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-246-unload-connect.png",
      width = 76,
      height = 99,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-1.5, 0.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-2-unload-connect-shadow.png",
      width = 49,
      height = 34,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(5.5, 20),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-2-unload-connect-shadow.png",
      width = 97,
      height = 66,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(5.25, 20)
      }
      }
      },
      [3] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-base.png",
      width = 46,
      height = 54,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, 16),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-base.png",
      width = 91,
      height = 107,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, 15.75)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-top.png",
      width = 22,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-top.png",
      width = 46,
      height = 109,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.75)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-3-unload-standup-shadow.png",
      width = 39,
      height = 21,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(2.5, 13.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-3-unload-standup-shadow.png",
      width = 78,
      height = 40,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(2.5, 13.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-135-unload-connect.png",
      width = 45,
      height = 50,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(3.5, 1),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-135-unload-connect.png",
      width = 89,
      height = 99,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(3.75, 0.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-3-unload-connect-shadow.png",
      width = 51,
      height = 27,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(9.5, 16.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-3-unload-connect-shadow.png",
      width = 102,
      height = 54,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(9.5, 17)
      }
      }
      },
      [4] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-base.png",
      width = 46,
      height = 54,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, 16),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-base.png",
      width = 91,
      height = 107,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, 15.75)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-top.png",
      width = 22,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-top.png",
      width = 46,
      height = 109,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.75)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-4-unload-standup-shadow.png",
      width = 43,
      height = 31,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(4.5, 18.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-4-unload-standup-shadow.png",
      width = 86,
      height = 61,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(4.5, 18.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-246-unload-connect.png",
      width = 38,
      height = 49,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-1, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-246-unload-connect.png",
      width = 76,
      height = 99,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-1.5, 0.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-4-unload-connect-shadow.png",
      width = 49,
      height = 41,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(5.5, 23.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-4-unload-connect-shadow.png",
      width = 97,
      height = 80,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(5.25, 23.5)
      }
      }
      },
      [5] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-base.png",
      width = 46,
      height = 54,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, 16),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-base.png",
      width = 91,
      height = 107,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, 15.75)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-top.png",
      width = 22,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-top.png",
      width = 46,
      height = 109,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.75)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-5-unload-standup-shadow.png",
      width = 39,
      height = 21,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(2.5, 13.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-5-unload-standup-shadow.png",
      width = 78,
      height = 40,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(2.5, 13.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-135-unload-connect.png",
      width = 45,
      height = 50,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(3.5, 1),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-135-unload-connect.png",
      width = 89,
      height = 99,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(3.75, 0.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-5-unload-connect-shadow.png",
      width = 50,
      height = 27,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(10, 16.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-5-unload-connect-shadow.png",
      width = 99,
      height = 54,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(10.25, 17)
      }
      }
      },
      [6] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-base.png",
      width = 46,
      height = 54,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, 16),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-base.png",
      width = 91,
      height = 107,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, 15.75)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-123456-unload-standup-top.png",
      width = 22,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-123456-unload-standup-top.png",
      width = 46,
      height = 109,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, 0.75)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-6-unload-standup-shadow.png",
      width = 67,
      height = 58,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.5, 0),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-6-unload-standup-shadow.png",
      width = 134,
      height = 115,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.5, 0.25)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-T-246-unload-connect.png",
      width = 38,
      height = 49,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-1, 0.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-T-246-unload-connect.png",
      width = 76,
      height = 99,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-1.5, 0.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-T-6-unload-connect-shadow.png",
      width = 41,
      height = 34,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(1.5, -12),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-T-6-unload-connect-shadow.png",
      width = 81,
      height = 66,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(1.25, -12)
      }
      }
      }
      },
      east =
      {
      [1] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-135-unload-standup-base.png",
      width = 55,
      height = 63,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -13.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-unload-standup-base.png",
      width = 110,
      height = 126,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -13.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-135-unload-standup-top.png",
      width = 60,
      height = 35,
      line_length =1,
      frame_count =19,
      shift = util.by_pixel(-19, -28.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-unload-standup-top.png",
      width = 121,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-18.75, -29)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-1-unload-connect.png",
      width = 53,
      height = 56,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(-43.5, -21),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-1-unload-connect.png",
      width = 107,
      height = 115,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-43.25, -20.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-1-unload-connect-shadow.png",
      width = 84,
      height = 77,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27, 17.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-1-unload-connect-shadow.png",
      width = 168,
      height = 153,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27, 17.75)
      }
      }
      },
      [2] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-246-unload-standup-base.png",
      width = 55,
      height = 74,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -22),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-unload-standup-base.png",
      width = 110,
      height = 148,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -21.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-246-unload-standup-top.png",
      width = 60,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-19, -38.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-unload-standup-top.png",
      width = 121,
      height = 110,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-18.75, -39)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-2-unload-standup-shadow.png",
      width = 82,
      height = 81,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-8, -13.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-2-unload-standup-shadow.png",
      width = 163,
      height = 162,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-7.75, -13.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-2-unload-connect.png",
      width = 54,
      height = 47,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-43, -47.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-2-unload-connect.png",
      width = 107,
      height = 96,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-42.75, -47)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-2-unload-connect-shadow.png",
      width = 85,
      height = 80,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27.5, -10),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-2-unload-connect-shadow.png",
      width = 169,
      height = 160,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27.75, -10)
      }
      }
      },
      [3] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-135-unload-standup-base.png",
      width = 55,
      height = 63,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -13.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-unload-standup-base.png",
      width = 110,
      height = 126,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -13.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-135-unload-standup-top.png",
      width = 60,
      height = 35,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-19, -28.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-unload-standup-top.png",
      width = 121,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-18.75, -29)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-3-unload-standup-shadow.png",
      width = 80,
      height = 79,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-7, 3.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-3-unload-standup-shadow.png",
      width = 160,
      height = 157,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-7, 3.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-3-unload-connect.png",
      width = 53,
      height = 50,
      line_length = 1,
      frame_count = 17,
      shift = util.by_pixel(-43.5, -25),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-3-unload-connect.png",
      width = 106,
      height = 99,
      scale = 0.5,
      line_length = 1,
      frame_count = 17,
      shift = util.by_pixel(-44, -24.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-3-unload-connect-shadow.png",
      width = 86,
      height = 88,
      line_length = 1,
      frame_count = 17,
      shift = util.by_pixel(-28, 13),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-3-unload-connect-shadow.png",
      width = 171,
      height = 175,
      scale = 0.5,
      line_length = 1,
      frame_count = 17,
      shift = util.by_pixel(-27.75, 12.75)
      }
      }
      },
      [4] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-246-unload-standup-base.png",
      width = 55,
      height = 74,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -22),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-unload-standup-base.png",
      width = 110,
      height = 148,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -21.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-246-unload-standup-top.png",
      width = 60,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-19, -38.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-unload-standup-top.png",
      width = 121,
      height = 110,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-18.75, -39)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-4-unload-standup-shadow.png",
      width = 82,
      height = 81,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-8, -13.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-4-unload-standup-shadow.png",
      width = 163,
      height = 162,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-7.75, -13.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-4-unload-connect.png",
      width = 53,
      height = 40,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-43.5, -50),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-4-unload-connect.png",
      width = 105,
      height = 80,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-43.75, -50)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-4-unload-connect-shadow.png",
      width = 85,
      height = 72,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27.5, -14),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-4-unload-connect-shadow.png",
      width = 168,
      height = 144,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27.5, -14)
      }
      }
      },
      [5] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-135-unload-standup-base.png",
      width = 55,
      height = 63,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -13.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-unload-standup-base.png",
      width = 110,
      height = 126,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -13.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-135-unload-standup-top.png",
      width = 60,
      height = 35,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-19, -28.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-135-unload-standup-top.png",
      width = 121,
      height = 70,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-18.75, -29)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-5-unload-standup-shadow.png",
      width = 82,
      height = 79,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-8, 3.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-5-unload-standup-shadow.png",
      width = 163,
      height = 157,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-7.75, 3.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-5-unload-connect.png",
      width = 54,
      height = 41,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-44, -27.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-5-unload-connect.png",
      width = 106,
      height = 82,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-44, -27.5)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-5-unload-connect-shadow.png",
      width = 86,
      height = 80,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27, 9),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-5-unload-connect-shadow.png",
      width = 172,
      height = 158,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27.5, 9)
      }
      }
      },
      [6] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-246-unload-standup-base.png",
      width = 55,
      height = 74,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -22),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-unload-standup-base.png",
      width = 110,
      height = 148,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-23.5, -21.5)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-246-unload-standup-top.png",
      width = 60,
      height = 55,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-19, -38.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-246-unload-standup-top.png",
      width = 121,
      height = 110,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(-18.75, -39)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-6-unload-standup-shadow.png",
      width = 82,
      height = 81,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-8, -13.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-6-unload-standup-shadow.png",
      width = 165,
      height = 162,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-8.25, -13.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/V-R-6-unload-connect.png",
      width = 54,
      height = 32,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(-44, -54),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-V-R-6-unload-connect.png",
      width = 106,
      height = 63,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-44, -53.75)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/V-R-6-unload-connect-shadow.png",
      width = 88,
      height = 67,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27, -16.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-V-R-6-unload-connect-shadow.png",
      width = 174,
      height = 133,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-27, -16.25)
      }
      }
      }
      },
      south =
      {
      [1] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-base.png",
      width = 46,
      height = 80,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, -62),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-base.png",
      width = 91,
      height = 160,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, -62)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-top.png",
      width = 22,
      height = 73,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-top.png",
      width = 46,
      height = 146,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-1-unload-standup-shadow.png",
      width = 67,
      height = 86,
      line_length = 1,
      frame_count =  20,
      shift = util.by_pixel(16.5, -50),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-1-unload-standup-shadow.png",
      width = 133,
      height = 172,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.75, -49.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-135-unload-connect.png",
      width = 39,
      height = 50,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(4.5, -103),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-135-unload-connect.png",
      width = 78,
      height = 100,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(4.5, -103)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-1-unload-connect-shadow.png",
      width = 41,
      height = 59,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(14.5, -81.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-1-unload-connect-shadow.png",
      width = 81,
      height = 118,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(14.75, -82)
      }
      }
      },
      [2] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-base.png",
      width = 46,
      height = 80,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, -62),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-base.png",
      width = 91,
      height = 160,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, -62)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-top.png",
      width = 22,
      height = 73,
      line_length =1,
      frame_count =19,
      shift = util.by_pixel(0, -72.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-top.png",
      width = 46,
      height = 146,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-2-unload-standup-shadow.png",
      width = 63,
      height = 86,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(18.5, -50),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-2-unload-standup-shadow.png",
      width = 125,
      height = 173,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(18.75, -49.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-246-unload-connect.png",
      width = 37,
      height = 47,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-3.5, -103.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-246-unload-connect.png",
      width = 74,
      height = 95,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-3.5, -103.25)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-2-unload-connect-shadow.png",
      width = 72,
      height = 90,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(16, -65),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-2-unload-connect-shadow.png",
      width = 143,
      height = 178,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(16.25, -65)
      }
      }
      },
      [3] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-base.png",
      width = 46,
      height = 80,
      line_length =1,
      frame_count =20,
      shift = util.by_pixel(0, -62),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-base.png",
      width = 91,
      height = 160,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, -62)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-top.png",
      width = 22,
      height = 73,
      line_length =1,
      frame_count =19,
      shift = util.by_pixel(0, -72.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-top.png",
      width = 46,
      height = 146,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-3-unload-standup-shadow.png",
      width = 67,
      height = 86,
      line_length =1,
      frame_count =20,
      shift = util.by_pixel(16.5, -50),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-3-unload-standup-shadow.png",
      width = 133,
      height = 172,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.75, -49.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-135-unload-connect.png",
      width = 39,
      height = 50,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(4.5, -103),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-135-unload-connect.png",
      width = 78,
      height = 100,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(4.5, -103)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-3-unload-connect-shadow.png",
      width = 66,
      height = 89,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(27, -67.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-3-unload-connect-shadow.png",
      width = 130,
      height = 177,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(27, -67.25)
      }
      }
      },
      [4] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-base.png",
      width = 46,
      height = 80,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, -62),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-base.png",
      width = 91,
      height = 160,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, -62)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-top.png",
      width = 22,
      height = 73,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-top.png",
      width = 46,
      height = 146,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-4-unload-standup-shadow.png",
      width = 67,
      height = 86,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.5, -50),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-4-unload-standup-shadow.png",
      width = 133,
      height = 172,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.75, -49.5)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-246-unload-connect.png",
      width = 37,
      height = 47,
      line_length =1,
      frame_count =16,
      shift = util.by_pixel(-3.5, -103.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-246-unload-connect.png",
      width = 74,
      height = 95,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-3.5, -103.25)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-4-unload-connect-shadow.png",
      width = 72,
      height = 90,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(16, -65),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-4-unload-connect-shadow.png",
      width = 143,
      height = 178,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(16.25, -65)
      }
      }
      },
      [5] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-base.png",
      width = 46,
      height = 80,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(0, -62),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-base.png",
      width = 91,
      height = 160,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, -62)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-top.png",
      width = 22,
      height = 73,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-top.png",
      width = 46,
      height = 146,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-5-unload-standup-shadow.png",
      width = 67,
      height = 86,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.5, -50),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-5-unload-standup-shadow.png",
      width = 133,
      height = 173,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.75, -49.75)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-135-unload-connect.png",
      width = 39,
      height = 50,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(4.5, -103),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-135-unload-connect.png",
      width = 78,
      height = 100,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(4.5, -103)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-5-unload-connect-shadow.png",
      width = 52,
      height = 89,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(20, -67.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-5-unload-connect-shadow.png",
      width = 103,
      height = 177,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(20.25, -67.25)
      }
      }
      },
      [6] =
      {
      standup_base =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-base.png",
      width = 46,
      height = 80,
      line_length =1,
      frame_count =20,
      shift = util.by_pixel(0, -62),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-base.png",
      width = 91,
      height = 160,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(-0.25, -62)
      }
      },
      standup_top =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-123456-unload-standup-top.png",
      width = 22,
      height = 73,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-123456-unload-standup-top.png",
      width = 46,
      height = 146,
      scale = 0.5,
      line_length = 1,
      frame_count = 19,
      shift = util.by_pixel(0, -72.5)
      }
      },
      standup_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-6-unload-standup-shadow.png",
      width = 67,
      height = 87,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(16.5, -50.5),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-6-unload-standup-shadow.png",
      width = 134,
      height = 174,
      scale = 0.5,
      line_length = 1,
      frame_count = 20,
      shift = util.by_pixel(17, -50)
      }
      },
      connector =
      {
      filename = kr_entities_path .. "steel-pump/connector/H-B-246-unload-connect.png",
      width = 37,
      height = 47,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-3.5, -103.5),
      hr_version =
      {
      filename = kr_entities_path .. "steel-pump/connector/hr-H-B-246-unload-connect.png",
      width = 74,
      height = 95,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(-3.5, -103.25)
      }
      },
      connector_shadow =
      {
      filename = "__base__/graphics/entity/pump/connector/H-B-6-unload-connect-shadow.png",
      width = 71,
      height = 90,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(16.5, -65),
      hr_version =
      {
      filename = "__base__/graphics/entity/pump/connector/hr-H-B-6-unload-connect-shadow.png",
      width = 144,
      height = 178,
      scale = 0.5,
      line_length = 1,
      frame_count = 16,
      shift = util.by_pixel(16.5, -65)
      }
      }
      }
      }
      }
    },
    fluid_animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-liquid.png",
        apply_runtime_tint = true,
        width = 20,
        height = 13,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-0.500, -14.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north-liquid.png",
          apply_runtime_tint = true,
          width = 38,
          height = 22,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-0.250, -16.750)
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(6.000, -8.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east-liquid.png",
          width = 35,
          height = 46,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(6.250, -8.500)
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-liquid.png",
        width = 26,
        height = 55,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(3.500, 6.500),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south-liquid.png",
          width = 38,
          height = 45,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(0.500, -9.250)
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-liquid.png",
        width = 18,
        height = 24,
        line_length =8,
        frame_count =32,
        shift = util.by_pixel(-6.000, -9.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west-liquid.png",
          width = 35,
          height = 47,
          scale = 0.5,
          line_length =8,
          frame_count =32,
          shift = util.by_pixel(-6.500, -9.500)
        }
      }
    },
    glass_pictures =
    {
      north =
      {
        filename = "__base__/graphics/entity/pump/pump-north-glass.png",
        width = 32,
        height = 64,
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-north-glass.png",
          width = 64,
          height = 128,
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/pump/pump-east-glass.png",
        width = 32,
        height = 32,
        shift = util.by_pixel(0.000, -16.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-east-glass.png",
          width = 128,
          height = 192,
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/pump/pump-south-glass.png",
        width = 32,
        height = 64,
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-south-glass.png",
          width = 64,
          height = 128,
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/pump/pump-west-glass.png",
        width = 32,
        height = 96,
        shift = util.by_pixel(0.000, 15.000),
        hr_version =
        {
          filename = "__base__/graphics/entity/pump/hr-pump-west-glass.png",
          width = 192,
          height = 192,
          scale = 0.5,
          shift = util.by_pixel(-16.000, 0.000)
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
})
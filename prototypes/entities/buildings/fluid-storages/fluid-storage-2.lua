local _fluid_storages_path = kr_entities_path .. "fluid-storages/"

data:extend(
{   
  {
    type = "storage-tank",
    name = "kr-fluid-storage-2",
    icon = kr_entities_icons_path .. "fluid-storages/fluid-storage-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 1, result = "kr-fluid-storage-2"},
    max_health = 2000,
    corpse = "kr-medium-random-pipes-remnant",
    resistances = 
    {
      {type = "physical", percent = 50},
      {type = "fire", percent = 80},
      {type = "impact", percent = 80}
    },
    collision_box = {{-2.35, -2.35}, {2.35, 2.35}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_box =
    {
      base_area = 2000,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {-3, -1} },
        { position = {-3, 0} },
        { position = {-3, 1} },
        { position = {-1, -3} },
        { position = {-0, -3} },
        { position = {1, -3} },
        { position = {3, -1} },
        { position = {3, 0} },
        { position = {3, 1} },
        { position = {-1, 3} },
        { position = {0, 3} },
        { position = {1, 3} }
      }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures =
    {
      picture =
      {
        sheets =
        {
          {
            filename = _fluid_storages_path .. "fluid-storage-2/fluid-storage-2.png",
            priority = "extra-high",
            frames = 1,
            width = 213,
            height = 213,
            hr_version =
            {
              filename = _fluid_storages_path .. "fluid-storage-2/hr-fluid-storage-2.png",
              priority = "extra-high",
              frames = 1,
              scale = 0.5,
              width = 426,
              height = 426
            }
          },
          {
            filename = _fluid_storages_path .. "fluid-storage-2/fluid-storage-2-sh.png",
            priority = "extra-high",
            frames = 1,
            width = 213,
            height = 213,
            draw_as_shadow = true,
            hr_version =
            {
              filename = _fluid_storages_path .. "fluid-storage-2/hr-fluid-storage-2-sh.png",
              priority = "extra-high",
              frames = 1,
              scale = 0.5,
              width = 426,
              height = 426,
              draw_as_shadow = true
            }
          },
        },
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15
      },
      window_background =
      {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24
      },
      flow_sprite =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 24,
        height = 15,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25,
        hr_version =
        {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1
        }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = 
      {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.5
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3
    },
    
    water_reflection =
    {
      pictures =
      {
        filename = kr_entities_path .. "fluid-storages/fluid-storage-2/fluid-storage-2-reflection.png",
        priority = "extra-high",
        width = 52,
        height = 48,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    },
    
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = 20
    }
})

local kr_icons_size = false

if krastorio.general.getSafeSettingValue("kr-large-icons") then
kr_icons_size = true
end

local empty_sprite =
{
  filename = kr_entities_path .. "empty.png",
  priority = "high",
  width = 1,
  height = 1,
  scale = 0.5,
  shift = {0, 0}
}

local shelter_animation =
{
  layers =
  {
    {
      filename = kr_entities_path .. "shelter/shelter-light.png",
      priority = "high",
      width = 256,
      height = 256,
      scale = 0.9,
      shift = {-0.05, 0},
      draw_as_light = true,
      frame_count = 6,
      line_length = 3,
      animation_speed = 0.5,
      hr_version =
      {
        filename = kr_entities_path .. "shelter/hr-shelter-light.png",
        priority = "high",
        width = 512,
        height = 512,
        scale = 0.45,
        shift = {-0.05, 0},
        draw_as_light = true,
        frame_count = 6,
        line_length = 3,
        animation_speed = 0.5
      }
    },
    {
      filename = kr_entities_path .. "shelter/shelter.png",
      priority = "high",
      width = 256,
      height = 256,
      scale = 0.9,
      shift = {-0.05, 0},
      frame_count = 6,
      line_length = 3,
      animation_speed = 0.5,
      hr_version =
      {
        filename = kr_entities_path .. "shelter/hr-shelter.png",
        priority = "high",
        width = 512,
        height = 512,
        scale = 0.45,
        shift = {-0.05, 0},
        frame_count = 6,
        line_length = 3,
        animation_speed = 0.5
      }
    },
    {
      filename = kr_entities_path .. "shelter/shelter-shadow.png",
      priority = "high",
      width = 256,
      height = 256,
      scale = 0.9,
      shift = {0.42, 0},
      frame_count = 6,
      line_length = 3,
      animation_speed = 0.5,
      draw_as_shadow = true,
      hr_version =
      {
        filename = kr_entities_path .. "shelter/hr-shelter-shadow.png",
        priority = "high",
        width = 512,
        height = 512,
        scale = 0.45,
        shift = {0.42, 0},
        frame_count = 6,
        line_length = 3,
        animation_speed = 0.5,
        draw_as_shadow = true
      }
    }
  }
}

-- Shelter
data:extend(
{
  {
    type = "electric-energy-interface",
    name = "kr-shelter",
    icon = kr_entities_icons_path .. "shelter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    allow_copy_paste = false,
    flags = {"placeable-player", "player-creation", "not-deconstructable", "not-rotatable", "not-blueprintable", "not-repairable", "not-on-map"},
    fast_replaceable_group = "kr-shelter",
    minable = {mining_time = 0.5, result = "kr-shelter"},
    collision_box = {{-2.72, -2.72}, {2.72, 2.72}},
    selection_box = {{0, 0}, {0, 0}},
    animation = shelter_animation,
    continuous_animation = true,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "120kJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "120kW",
      render_no_power_icon = false,
      render_no_network_icon = false
    },
    energy_production = "120kW"
  },
  -- Shelter
  {
    type = "container",
    name = "kr-shelter-container",
    localised_name        = {"entity-name.kr-shelter"},
    localised_description = {"entity-description.kr-shelter"},
    icon = kr_entities_icons_path .. "shelter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    allow_copy_paste = false,
    flags = {"player-creation", "not-rotatable", "not-blueprintable"},
    minable = {mining_time = 0.5, result = "kr-shelter"},
    max_health = 1500,
    corpse = "kr-medium-random-pipes-remnant",
    collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
    selection_box = {{-3, -3}, {3, 3.20}},
    resistances =
    {
      {type = "physical", percent = 50},
      {type = "fire", percent = 75},
      {type = "impact", percent = 75}
    },

    water_reflection =
    {
      pictures =
      {
        filename = kr_entities_path .. "shelter/shelter-reflection.png",
        priority = "extra-high",
        width = 60,
        height = 50,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    },

    picture = shelter_animation,
    inventory_size = 200,
    scale_info_icons = kr_icons_size,
    open_sound = { filename = kr_sounds_mod .. "buildings/open.ogg", volume = 1 },
    close_sound = { filename = kr_sounds_mod .. "buildings/close.ogg", volume = 1 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },

  -- Shelter light

  {
    type = "lamp",
    name = "kr-shelter-light",
    localised_name        = {"entity-name.kr-shelter"},
    localised_description = {"entity-description.kr-shelter"},
    icon = kr_entities_path .. "empty.png",
    icon_size = 1,
    allow_copy_paste = false,
    flags = {"hidden", "player-creation", "not-rotatable", "not-deconstructable", "not-blueprintable", "not-repairable", "not-on-map"},
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    energy_source = {type = "void"},
    energy_usage_per_tick = "1W",
    darkness_for_all_lamps_on = 0.2,
    darkness_for_all_lamps_off = 0.1,
    light =
    {
      intensity = 0.8,
      size = 12,
      shift = {0.0, 1.75},
      color = {r=0.95, g=0.88, b=0.85}
    },
    light_when_colored =
    {
      intensity = 1,
      size = 6,
      color = {r=1.0, g=1.0, b=1.0}
    },
    glow_size = 6,
    glow_color_intensity = 0.25,
    picture_off = empty_sprite,
    picture_on  = empty_sprite
  }

})

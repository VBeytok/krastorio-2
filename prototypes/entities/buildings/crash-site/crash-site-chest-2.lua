local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{   
  {
    type = "container",
    name = "kr-crash-site-chest-2",
    localised_name = {"entity-name.crash-site-chest-2"},
    localised_description = {"entity-description.kr-crash-site-building"},
    icon = kr_crash_site_icons_path .. "crash-site-chest.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "hidden", "not-rotatable"},
    max_health = 350,
    corpse = "small-remnants",
    minable =
    {
      mining_time = 2,
      results = 
      {
        { type = "item", name = "iron-plate", amount_min = 1, amount_max = 2, probability = 0.70 },
        { type = "item", name = "copper-cable", amount_min = 0, amount_max = 2, probability = 0.40 },
        { type = "item", name = "iron-gear-wheel", amount_min = 0, amount_max = 2, probability = 0.40},
        { type = "item", name = "electronic-circuit", amount_min = 0, amount_max = 2, probability = 0.20},
        { type = "item", name = "kr-sentinel", amount_min = 0, amount_max = 2, probability = 0.10}
      },
      mining_particle = "shell-particle"
    },
    damaged_trigger_effect = hit_effects.entity(),
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.43 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.43 },
    resistances =
    {
      {type = "fire", percent = 100},
      {type = "impact",percent = 60},
      {type = "physical",percent = 50}
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 5,
    vehicle_impact_sound = sounds.generic_impact,
    integration_patch =
    {
      filename = kr_crash_site_sprites_path .. "chests/crash-site-chest-2-ground.png",
      priority = crash_site_sprite_priority,
      width = 111,
      height = 95,
      shift = util.by_pixel(-12, 4),
      frame_count = 1,
      line_length = 1,
      hr_version =
      {
        filename = kr_crash_site_sprites_path .. "chests/hr-crash-site-chest-2-ground.png",
        priority = crash_site_sprite_priority,
        width = 218,
        height = 186,
        shift = util.by_pixel(-10, 5),
        frame_count = 1,
        line_length = 1,
        scale = 0.5
      }
    },
    picture =
    {
      layers =
      {
        {
          filename = kr_crash_site_sprites_path .. "chests/crash-site-chest-2.png",
          priority = "extra-high",
          width = 59,
          height = 45,
          shift = util.by_pixel(0, 8),
          hr_version =
          {
            filename = kr_crash_site_sprites_path .. "chests/hr-crash-site-chest-2.png",
            priority = "extra-high",
            width = 116,
            height = 88,
            shift = util.by_pixel(0, 8),
            scale = 0.5
          }
        },
        {
          filename = kr_crash_site_sprites_path .. "chests/crash-site-chest-2-shadow.png",
          priority = "extra-high",
          width = 95,
          height = 65,
          shift = util.by_pixel(0, 4),
          draw_as_shadow = true,
          hr_version =
          {
            filename = kr_crash_site_sprites_path .. "chests/hr-crash-site-chest-2-shadow.png",
            priority = "extra-high",
            width = 188,
            height = 126,
            shift = util.by_pixel(0, 5),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
})
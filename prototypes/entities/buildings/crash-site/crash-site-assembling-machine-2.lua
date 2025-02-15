local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend(
{   
  {
    type = "assembling-machine",
    name = "kr-crash-site-assembling-machine-2-repaired",
    localised_name = {"entity-name.kr-damaged-ship-assembler"},
    localised_description = {"entity-description.kr-crash-site-building"},
    has_backer_name = false,
    icon = kr_crash_site_icons_path .. "crash-site-assembling-machine-2-repaired.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "hidden", "not-rotatable"},
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 300,
    corpse = "big-remnants",
    minable = 
    {
      mining_time = 4,
      results = 
      {
        { type = "item", name = "iron-plate", amount_min = 5, amount_max = 13, probability = 1 },
        { type = "item", name = "copper-cable", amount_min = 4, amount_max = 8, probability = 1 },
        { type = "item", name = "iron-gear-wheel", amount_min = 3, amount_max = 5, probability = 0.75},
        { type = "item", name = "electronic-circuit", amount_min = 2, amount_max = 3, probability = 0.75},
        { type = "item", name = "kr-sentinel", amount_min = 1, amount_max = 2, probability = 0.50}
      },
      mining_particle = "shell-particle"
    },
    dying_explosion = "medium-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    resistances =
    {
      {type = "fire", percent = 100},
      {type = "impact",percent = 60},
      {type = "physical",percent = 50}
    },
    collision_box = {{-0.7, -1.2}, {0.7, 1.2}},
    selection_box = {{-1, -1.5}, {1, 1.5}},
    alert_icon_shift = util.by_pixel(-3, -12),
    integration_patch_render_layer = "decals",
    integration_patch = 
    {
      filename = kr_crash_site_sprites_path .. "assembling-machine/crash-site-assembling-machine-2-ground.png",
      priority = crash_site_sprite_priority,
      width = 146,
      height = 106,
      shift = util.by_pixel(-8, -4),
      frame_count = 1,
      line_length = 1,
      hr_version =
      {
        filename = kr_crash_site_sprites_path .. "assembling-machine/hr-crash-site-assembling-machine-2-ground.png",
        priority = crash_site_sprite_priority,
        width = 290,
        height = 238,
        shift = util.by_pixel(-8, -10),
        frame_count = 1,
        line_length = 1,
        scale = 0.5
      }
    },
    animation =
    {
      layers =
      {
        {
          filename = kr_crash_site_sprites_path .. "assembling-machine/crash-site-assembling-machine-2-repaired.png",
          priority = crash_site_sprite_priority,
          width = 100,
          height = 98,
          frame_count = 20,
          line_length = 5,
          shift = util.by_pixel(-4, -10),
          animation_speed = 2,
          hr_version =
          {
            filename = kr_crash_site_sprites_path .. "assembling-machine/hr-crash-site-assembling-machine-2-repaired.png",
            priority = crash_site_sprite_priority,
            width = 198,
            height = 200,
            frame_count = 20,
            line_length = 5,
            shift = util.by_pixel(-4, -11),
            animation_speed = 2,
            scale = 0.5
          }
        },
        {
          filename = kr_crash_site_sprites_path .. "assembling-machine/crash-site-assembling-machine-2-repaired-shadow.png",
          priority = crash_site_sprite_priority,
          width = 106,
          height = 86,
          frame_count = 20,
          line_length = 5,
          draw_as_shadow = true,
          shift = util.by_pixel(2, -8),
          animation_speed = 2,
          hr_version =
          {
            filename = kr_crash_site_sprites_path .. "assembling-machine/hr-crash-site-assembling-machine-2-repaired-shadow.png",
            priority = crash_site_sprite_priority,
            width = 208,
            height = 174,
            frame_count = 20,
            line_length = 5,
            draw_as_shadow = true,
            shift = util.by_pixel(3, -9),
            animation_speed = 2,
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = kr_crash_site_sprites_path .. "assembling-machine/crash-site-assembling-machine-2-repaired-light.png",
          priority = crash_site_sprite_priority,
          width = 84,
          height = 62,
          frame_count = 20,
          line_length = 5,
          shift = util.by_pixel(-8, -6),
          draw_as_glow = true,
          blend_mode = "additive",
          animation_speed = 2,
          hr_version =
          {
            filename = kr_crash_site_sprites_path .. "assembling-machine/hr-crash-site-assembling-machine-2-repaired-light.png",
            priority = crash_site_sprite_priority,
            width = 174,
            height = 124,
            frame_count = 20,
            line_length = 5,
            shift = util.by_pixel(-7, -4),
            draw_as_glow = true,
            blend_mode = "additive",
            animation_speed = 2,
            scale = 0.5
          }
        }
      }
    },
    crafting_categories = {"crafting", "basic-crafting"},
    crafting_speed = 0.25,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4
    },
    energy_usage = "90kW",
    ingredient_count = 2,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/assembling-machine-repaired-1.ogg",
          volume = 0.8
        },
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20
    }
  }
})
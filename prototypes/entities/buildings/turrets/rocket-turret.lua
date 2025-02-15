local hit_effects = require("__base__/prototypes/entity/hit-effects")

function rocket_turret_sheet(inputs)
return
{
  layers =
  {
    {
      filename = kr_entities_path .. "turrets/rocket-turret-sheet.png",
      width = 220,
      height = 190,
      line_length = inputs.frame_count or 8,
      frame_count = inputs.frame_count or 1,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0, -0.7},
      hr_version =
      {
        filename = kr_entities_path .. "turrets/hr-rocket-turret-sheet.png",
        width = 440,
        height = 380,
        line_length = inputs.frame_count or 8,
        frame_count = inputs.frame_count or 1,
        axially_symmetrical = false,
        direction_count = 64,
        shift = {0, -0.7},
        scale = 0.5
      }
    },

    {
      flags = { "mask" },
      filename = kr_entities_path .. "turrets/rocket-turret-sheet-mask.png",
      width = 220,
      height = 190,
      line_length = inputs.frame_count or 8,
      frame_count = inputs.frame_count or 1,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0, -0.7},
      apply_runtime_tint = true,
      hr_version =
      {
        flags = { "mask" },
        filename = kr_entities_path .. "turrets/hr-rocket-turret-sheet-mask.png",
        width = 440,
        height = 380,
        line_length = inputs.frame_count or 8,
        frame_count = inputs.frame_count or 1,
        axially_symmetrical = false,
        direction_count = 64,
        shift = {0, -0.7},
        apply_runtime_tint = true,
        scale = 0.5
      }
    },

    {
      filename = kr_entities_path .. "turrets/rocket-turret-sheet-shadow.png",
      width = 220,
      height = 190,
      line_length = inputs.frame_count or 8,
      frame_count = inputs.frame_count or 1,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.9, 0.05},
      draw_as_shadow = true,
      hr_version =
      {
        filename = kr_entities_path .. "turrets/hr-rocket-turret-sheet-shadow.png",
        width = 440,
        height = 380,
        line_length = inputs.frame_count or 8,
        frame_count = inputs.frame_count or 1,
        axially_symmetrical = false,
        direction_count = 64,
        shift = {0.9, 0.05},
        draw_as_shadow = true,
        scale = 0.5
      }
    }


  }
}
end


data:extend(
{
  {
    type = "ammo-turret",
    name = "kr-rocket-turret",
    icon = kr_entities_icons_path .. "rocket-turret.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation", "building-direction-8-way"},
    minable = {mining_time = 1, result = "kr-rocket-turret"},
    max_health = 1000,
    corpse = "turret-remnant",
    damaged_trigger_effect = hit_effects.entity(),
    resistances =
    {
      {type = "physical", percent = 50},
      {type = "fire", percent = 75},
      {type = "impact", percent = 75}
    },
    collision_box = {{-1.75, -1.75 }, {1.75, 1.75}},
    selection_box = {{-2, -2 }, {2, 2}},
    rotation_speed = 0.002,
    --preparing_speed = 0.04,
    --folding_speed = 0.04,
    dying_explosion = "big-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    --attacking_speed = 0.5,
    folded_animation = rocket_turret_sheet{direction_count = 8, line_length = 1},
    --preparing_animation = rocket_turret_sheet{direction_count = 8, line_length = 1},
    --prepared_animation = rocket_turret_sheet{},
    --attacking_animation = rocket_turret_sheet{direction_count = 8, line_length = 1},
    --folding_animation = rocket_turret_sheet{direction_count = 8, line_length = 1, run_mode = "backward"},
    base_picture =
    {
      layers =
      {
        {
          filename = kr_entities_path .. "turrets/kr-turret-base.png",
          priority = "high",
          width = 220,
          height = 190,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.8},
          hr_version =
          {
            filename = kr_entities_path .. "turrets/hr-kr-turret-base.png",
            priority = "high",
            width = 440,
            height = 380,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = {0, -0.8},
            scale = 0.5
          }
        },
        {
          filename = kr_entities_path .. "turrets/kr-turret-base-mask.png",
          flags = { "mask", "low-object" },
          line_length = 1,
          width = 220,
          height = 190,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.8},
          apply_runtime_tint = true,
          hr_version =
          {
            filename = kr_entities_path .. "turrets/hr-kr-turret-base-mask.png",
            flags = { "mask", "low-object" },
            line_length = 1,
            width = 440,
            height = 380,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = {0, -0.8},
            apply_runtime_tint = true,
            scale = 0.5
          }
        },
        {
          filename = kr_entities_path .. "turrets/kr-turret-base-shadow.png",
          line_length = 1,
          width = 220,
          height = 190,
          axially_symmetrical = false,
          draw_as_shadow = true,
          direction_count = 1,
          frame_count = 1,
          shift = {0, -0.8},
          hr_version =
          {
            filename = kr_entities_path .. "turrets/hr-kr-turret-base-shadow.png",
            line_length = 1,
            width = 440,
            height = 380,
            axially_symmetrical = false,
            draw_as_shadow = true,
            direction_count = 1,
            frame_count = 1,
            shift = {0, -0.8},
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "missiles-for-turrets",
      cooldown = 120,
      turn_range = 1/7,
      projectile_creation_distance = 3.35,
      projectile_center = {0, 0.1},
      range = 80,
      min_range = 35,
      rotate_penalty = 20,
      health_penalty = -100,
      sound =
      {
        {
          filename = kr_weapons_sounds_path .. "rocket-launch.ogg",
          volume = 0.8
        }
      }
    },

    water_reflection =
    {
      pictures =
      {
        filename = kr_entities_path .. "turrets/turrets-reflection.png",
        priority = "extra-high",
        width = 50,
        height = 50,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false
    },

    shoot_in_prepare_state = false,
    turret_base_has_direction = true,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    call_for_help_radius = 90
  }
})

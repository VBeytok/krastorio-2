local hit_effects       = require("__base__/prototypes/entity/hit-effects")
local sounds            = require("__base__/prototypes/entity/sounds")
local movement_triggers = require("__base__/prototypes/entity/movement-triggers")

movement_triggers.kr_advanced_tank =
{
  {
    tiles = { "water-shallow" },

    type = "create-particle",
    repeat_count = 5,
    particle_name = "shallow-water-vehicle-particle",
    initial_height = 0.2,
    speed_from_center = 0.01,
    speed_from_center_deviation = 0.05,
    initial_vertical_speed = 0.02,
    offsets = 
    {
      {0.75, 1},
      {-0.75,1},
      {0.75, -1},
      {-0.75,-1}
    },
    offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
    rotate_offsets = true
  },
  {
    tiles = { "water-mud" },

    type = "create-particle",
    repeat_count = 5,
    particle_name = "shallow-water-2-vehicle-particle",
    initial_height = 0.2,
    speed_from_center = 0.01,
    speed_from_center_deviation = 0.05,
    initial_vertical_speed = 0.02,
    offsets = 
    {
      {0.75, 1},
      {-0.75,1},
      {0.75, -1},
      {-0.75,-1}
    },
    offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
    rotate_offsets = true
  },
  {
    tiles = { "sand-1" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 7,
        particle_name = "sand-1-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.2,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1.5},
          {-0.7,1.5}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "sand-1-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "sand-1-stone-vehicle-particle-tiny",
        probability = 0.03,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "sand-1-stone-vehicle-particle-small",
        probability = 0.03,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "sand-2" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "sand-2-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "sand-2-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "sand-2-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 1,
        particle_name = "sand-2-stone-vehicle-particle-small",
        probability = 0.03,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "sand-3" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "sand-3-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "sand-3-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "sand-3-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 1,
        particle_name = "sand-3-stone-vehicle-particle-small",
        probability = 0.03,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "grass-1" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 2,
        particle_name = "grass-1-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 2,
        particle_name = "grass-1-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 7,
        particle_name = "vegetation-vehicle-particle-small-medium",
        probability = 0.07,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "brown-dust-vehicle-particle",
        probability = 0.1,
        initial_height = 0.2,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.25, -0.25}, {0.25, 0.25}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "grass-2" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 2,
        particle_name = "grass-2-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 2,
        particle_name = "grass-2-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        }, 
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 7,
        particle_name = "vegetation-vehicle-particle-small-medium",
        probability = 0.07,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "brown-dust-vehicle-particle",
        probability = 0.1,
        initial_height = 0.2,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.25, -0.25}, {0.25, 0.25}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "grass-3" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 2,
        particle_name = "grass-3-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 2,
        particle_name = "grass-3-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.8,-0.5},
          {-0.8,-1},
          {0.8, -1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 7,
        particle_name = "grass-3-vegetation-vehicle-particle-small-medium",
        probability = 0.07,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "brown-dust-vehicle-particle",
        probability = 0.1,
        initial_height = 0.2,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.25, -0.25}, {0.25, 0.25}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "grass-4" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "grass-4-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "grass-4-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "vegetation-vehicle-particle-small-medium",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "brown-dust-vehicle-particle",
        probability = 0.1,
        initial_height = 0.2,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.25, -0.25}, {0.25, 0.25}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "red-desert-0" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "red-desert-0-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "red-desert-0-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "red-desert-0-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "red-desert-0-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "vegetation-vehicle-particle-small-medium",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "red-desert-1" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "red-desert-1-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "red-desert-1-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "red-desert-1-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "red-desert-1-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "red-desert-2" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "red-desert-2-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "red-desert-2-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = {{0.7, -1},
                  {-0.7,-1}},
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "red-desert-2-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "red-desert-2-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "red-desert-3" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "red-desert-3-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "red-desert-3-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "red-desert-3-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "red-desert-3-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dirt-1" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dirt-1-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dirt-1-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "dirt-1-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dirt-1-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dirt-2" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dirt-2-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dirt-2-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = {{0.7, -1},
                  {-0.7,-1}},
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "dirt-2-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dirt-2-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dirt-3" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dirt-3-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dirt-3-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "dirt-3-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dirt-3-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dirt-4" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dirt-4-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dirt-4-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "dirt-4-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dirt-4-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.8,-0.5},
          {-0.8,-0.5},
          {0.8, -1},
          {-0.8,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dirt-5" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dirt-5-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dirt-5-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle", 
        repeat_count = 4,
        particle_name = "dirt-5-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dirt-5-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dirt-6" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dirt-6-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dirt-6-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "dirt-6-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dirt-6-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dirt-7" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dirt-7-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dirt-7-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "dirt-7-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dirt-7-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "dry-dirt" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "dry-dirt-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "dry-dirt-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "dry-dirt-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "dry-dirt-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
  {
    tiles = { "landfill" },
    actions =
    {
      {
        type = "create-particle",
        repeat_count = 8,
        particle_name = "landfill-dust-vehicle-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, 1},
          {-0.7,1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 5,
        particle_name = "landfill-dust-tank-front-particle",
        probability = 0.3,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.7, -1},
          {-0.7,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 4,
        particle_name = "landfill-stone-vehicle-particle-tiny",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.2, -0.25}, {0.2, 0.2}},
        rotate_offsets = true
      },
      {
        type = "create-particle",
        repeat_count = 3,
        particle_name = "landfill-stone-vehicle-particle-small",
        probability = 0.05,
        initial_height = 0.1,
        speed_from_center = 0.01,
        speed_from_center_deviation = 0,
        initial_vertical_speed = 0.02,
        frame_speed = 1,
        initial_vertical_speed_deviation = 0.05,
        offsets = 
        {
          {0.75, 1},
          {-0.75,1},
          {0.9,-0.5},
          {-0.9,-0.5},
          {0.9, -1},
          {-0.9,-1}
        },
        offset_deviation = {{-0.6, -0.6}, {0.6, 0.6}},
        rotate_offsets = true
      },
    }
  },
}

data:extend(
{
  {
    type = "car",
    name = "kr-advanced-tank",
    icon = kr_vehicles_icons_path .. "advanced-tank.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"},
    minable = {mining_time = 10, result = "kr-advanced-tank"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 5000,
    equipment_grid = "kr-tank-grid-2",
    corpse = "kr-advanced-tank-remnant",
    dying_explosion = "big-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    immune_to_rock_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 30,
        percent = 80
      },
      {
        type = "physical",
        decrease = 30,
        percent = 70
      },
      {
        type = "impact",
        decrease = 100,
        percent = 90
      },
      {
        type = "explosion",
        decrease = 100,
        percent = 90
      },
      {
        type = "laser",
        decrease = 30,
        percent = 50
      },
      {
        type = "acid",
        decrease = 50,
        percent = 95
      }
    },
    collision_box = {{-1.45, -2.35}, {1.45, 2.35}},
    selection_box = {{-1.45, -2.35}, {1.45, 2.35}},
    drawing_box = {{-2, -2}, {2, 2}},
    damaged_trigger_effect = hit_effects.entity(),
    effectivity = 1,
    braking_power = "12MW",
    burner =
    {
      fuel_category = "chemical",
      emissions_per_minute = 25,
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "turbine-smoke",
          deviation = {0.25, 0.25},
          frequency = 30,
          position = {0, 2},
          starting_frame = 0,
          starting_vertical_speed = 0.1,
          slow_down_factor = 1,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "5MW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.8, -21},
        size = 3,
        intensity = 0.75,
        color = {r = 0.75, g = 0.75, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.8, -21},
        size = 3,
        intensity = 0.75,
        color = {r = 0.75, g = 0.75, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 208,
          height = 208,
          frame_count = 2,
          direction_count = 64,
          shift = {0, 0.25},
          animation_speed = 6,
          max_advance = 0.2,
          line_length = 8,
          scale = 1.05,
          stripes =
          {
            {
              filename = kr_entities_path .. "advanced-tank/advanced-tank-base.png",
              width_in_frames = 16,
              height_in_frames = 8
            }
          },
          hr_version =
          {
            width = 416,
            height = 416,
            frame_count = 2,
            direction_count = 64,
            shift = {0, 0.25},
            animation_speed = 6,
            max_advance = 0.2,
            line_length = 8,
            scale = 0.525,
            stripes =
            {
              {
                filename = kr_entities_path .. "advanced-tank/hr-advanced-tank-base.png",
                width_in_frames = 16,
                height_in_frames = 8
              }
            }
          }
        },
        {
          width = 208,
          height = 208,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          animation_speed = 6,
          max_advance = 0.2,
          line_length = 8,
          shift = {0, 0.25},
          scale = 1.05,
          stripes =
          {
            {
              filename = kr_entities_path .. "advanced-tank/advanced-tank-base-mask.png",
              width_in_frames = 16,
              height_in_frames = 8
            }
          },
          hr_version =
          {
            width = 416,
            height = 416,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            animation_speed = 6,
            max_advance = 0.2,
            line_length = 8,
            shift = {0, 0.25},
            scale = 0.525,
            stripes = 
            {
              {
                filename = kr_entities_path .. "advanced-tank/hr-advanced-tank-base-mask.png",
                width_in_frames = 16,
                height_in_frames = 8
              }
            }
          }
        },
        {
          width = 208,
          height = 208,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.75, 0.25},
          scale = 1.05,
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
            {
              filename = kr_entities_path .. "advanced-tank/advanced-tank-base-shadow.png",
              width_in_frames = 16,
              height_in_frames = 8
            }
          },
          hr_version =
          {
            width = 416,
            height = 416,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = {0.75, 0.25},
            scale = 0.525,
            animation_speed = 8,
            max_advance = 0.2,
            stripes =
            {
              {
                filename = kr_entities_path .. "advanced-tank/hr-advanced-tank-base-shadow.png",
                width_in_frames = 16,
                height_in_frames = 8
              }
            }
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          width = 250,
          height = 250,
          frame_count = 1,
          direction_count = 64,
          shift = {0, 0.25},
          scale = 1.05,
          animation_speed = 6,
          max_advance = 0.2,
          line_length = 16,
          stripes =
          {
            {
              filename = kr_entities_path .. "advanced-tank/advanced-tank-turret.png",
              width_in_frames = 8,
              height_in_frames = 8
            }
          },
          hr_version =
          {
            width = 500,
            height = 500,
            frame_count = 1,
            direction_count = 64,
            shift = {0, 0.25},
            scale = 0.525,
            animation_speed = 6,
            max_advance = 0.2,
            line_length = 16,
            stripes =
            {
              {
                filename = kr_entities_path .. "advanced-tank/hr-advanced-tank-turret.png",
                width_in_frames = 8,
                height_in_frames = 8
              }
            }
          }
        },
        {
          width = 250,
          height = 250,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          animation_speed = 6,
          max_advance = 0.2,
          line_length = 16,
          shift = {0, 0.25},
          scale = 1.05,
          stripes = 
          {
            {
              filename = kr_entities_path .. "advanced-tank/advanced-tank-turret-mask.png",
              width_in_frames = 8,
              height_in_frames = 8
            }
          },
          hr_version =
          {
            width = 500,
            height = 500,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            animation_speed = 6,
            max_advance = 0.2,
            line_length = 16,
            shift = {0, 0.25},
            scale = 0.525,
            stripes = 
            {
              {
                filename = kr_entities_path .. "advanced-tank/hr-advanced-tank-turret-mask.png",
                width_in_frames = 8,
                height_in_frames = 8
              }
            }
          }
        },
        {
          width = 258,
          height = 258,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          animation_speed = 6,
          max_advance = 0.2,
          line_length = 16,
          shift = {0.75, 0.25},
          scale = 1.05,
          stripes = 
          {
            {
              filename = kr_entities_path .. "advanced-tank/advanced-tank-turret-shadow.png",
              width_in_frames = 8,
              height_in_frames = 8
            }
          },
          hr_version =
          {
            width = 516,
            height = 516,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            animation_speed = 6,
            max_advance = 0.2,
            line_length = 16,
            shift = {0.75, 0.25},
            scale = 0.525,
            stripes = 
            {
              {
                filename = kr_entities_path .. "advanced-tank/hr-advanced-tank-turret-shadow.png",
                width_in_frames = 8,
                height_in_frames = 8
              }
            }
          }
        }
      }
    },
    turret_rotation_speed = 0.3 / 60,
    turret_return_timeout = 300,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.8
      }
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound = sounds.generic_impact,
    working_sound =
    {
      sound =
      {
        filename = kr_vehicles_sounds_path .. "advanced-tank-engine.ogg",
        volume = 1
      },
      activate_sound =
      {
        filename = kr_vehicles_sounds_path .. "advanced-tank-engine-start.ogg",
        volume = 1
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.8
      },
      match_speed_to_activity = true
    },
    track_particle_triggers = movement_triggers.kr_advanced_tank,
    water_reflection = car_reflection(2.0),
    open_sound = { filename = kr_sounds_mod .. "buildings/open.ogg", volume = 1 },
    close_sound = { filename = kr_sounds_mod .. "buildings/close.ogg", volume = 1 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 150000,
    inventory_size = 130,
    guns = 
    {
      "advanced-tank-machine-gun",
      "advanced-tank-laser-cannon",
      "advanced-tank-cannon-a",
      "advanced-tank-cannon-b",
      "advanced-tank-cannon-c"
    }
  }
})
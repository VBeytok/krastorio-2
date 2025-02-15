data:extend(
{
  {
        type = "produce-achievement",
        name = "10000-matter",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/silver.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "matter.png", icon_size = 128 }
    },
    icon_size = 128,
        order = "kr-p-m1",
    limited_to_one_game = false,
    fluid_product = "matter",
    amount = 10000
    },
  {
        type = "produce-achievement",
        name = "100000-matter",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/gold.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "matter.png", icon_size = 128 }
    },
    icon_size = 128,
        order = "kr-p-m2",
    limited_to_one_game = false,
    fluid_product = "matter",
    amount = 100000
    },
  {
        type = "produce-achievement",
        name = "1000000-matter",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/epic.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "matter.png", icon_size = 128 }
    },
    icon_size = 128,
        order = "kr-p-m3",
    limited_to_one_game = false,
    fluid_product = "matter",
    amount = 1000000
    },
  {
        type = "produce-achievement",
        name = "10000-ai-core",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/gold.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "ai-core.png", icon_size = 128 }
    },
    icon_size = 128,
        order = "kr-p-a1",
    limited_to_one_game = false,
    item_product = "ai-core",
    amount = 10000
    },
  {
        type = "research-achievement",
        name = "destroyer-of-worlds",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/epic.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "destroyer-of-worlds.png", icon_size = 128 }
    },
    icon_size = 128,
    limited_to_one_game = false,
        order = "kr-p-m4",
    technology = "kr-antimatter-ammo",
    },
  {
        type = "build-entity-achievement",
        name = "dig-into-deep",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/normal.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "dig-into-deep.png", icon_size = 128 }
    },
    icon_size = 128,
        order = "kr-b-1",
    limited_to_one_game = false,
    to_build = "kr-quarry-drill",
    amount = 1
    },
  {
        type = "build-entity-achievement",
        name = "death-on-wheels",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/normal.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "death-on-wheels.png", icon_size = 128 }
    },
    icon_size = 128,
        order = "kr-b-2",
    limited_to_one_game = false,
    to_build = "kr-advanced-tank",
    amount = 1
    },
  {
        type = "build-entity-achievement",
        name = "big-brother",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "backgrounds/normal.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "sentinel.png", icon_size = 128 }
    },
    icon_size = 128,
        order = "kr-b-2",
    limited_to_one_game = false,
    to_build = "kr-sentinel",
    amount = 100
    },
  {
    type = "finish-the-game-achievement",
    name = "faster-than-sound",
    icons = 
    {     
      { icon = kr_achievements_icons_path .. "speedy-win.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "backgrounds/gold.png", icon_size = 128 }
    },
    icon_size = 128,
    until_second = 60 * 60 * 30, -- 30 hours
    allowed_without_fight = false,
    limited_to_one_game = false,
    order = "kr-z-1"
  },
  {
    type = "finish-the-game-achievement",
    name = "faster-than-light",
    icons = 
    {     
      { icon = kr_achievements_icons_path .. "speedy-win.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "backgrounds/epic.png", icon_size = 128 }
    },
    icon_size = 128,
    until_second = 60 * 60 * 20, -- 20 hours
    allowed_without_fight = false,
    limited_to_one_game = false,
    order = "kr-z-2"
  },
  {
    type = "dont-build-entity-achievement",
    name = "no-antimatter",
    icons = 
    {
      { icon = kr_achievements_icons_path .. "no-antimatter.png", icon_size = 128 },
      { icon = kr_achievements_icons_path .. "backgrounds/red.png", icon_size = 128 }
    },
    icon_size = 128,
    allowed_without_fight = false,
    limited_to_one_game = false,
    dont_build = "kr-antimatter-reactor",
    order = "kr-c-1"
  }
})
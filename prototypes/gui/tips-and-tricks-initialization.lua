data:extend(
{
  {
    type = "tips-and-tricks-item-category",
    name = "kr-about-k2",
    order = "a"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-about-k2",
    category = "kr-about-k2",
    order = "a",
    starting_status = "unlocked",
    is_title = true,
    image = kr_graphic_mod_path .. "gui/tip&tricks/about-k2-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-shelter",
    order = "a",
    trigger =
    {
      type = "or",
      triggers =
      {
        {
          type   = "build-entity",
          entity = "kr-shelter",
          count  = 1
        },
        {
          type   = "build-entity",
          entity = "kr-shelter-plus",
          count  = 1
        }
      }
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/shelter-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-new-gun-play",
    order = "b",
    trigger =
    {
      type = "or",
      triggers =
      {
        {
          type = "group-attack"
        },
        {
          type = "time-elapsed",
          ticks = 60 * 60 * 135 -- 135 minutes
        }
      }
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/new-gun-play-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-new-metals",
    order = "c",
    starting_status = "unlocked",
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/new-metals-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-creep",
    order = "d",
    trigger = 
    {
      type = "research",
      technology = "military-science-pack"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/creep-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-fuels",
    order = "e",
    trigger = 
    {
      type = "research",
      technology = "kr-fuel"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/fuels-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-air-purifier",
    order = "f",
    trigger = 
    {
      type = "research",
      technology = "kr-air-purification"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/air-purifier-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-inserters-krastorio-hotkey",
    order = "g",
    trigger = 
    {
      type = "or",
      triggers =
      {
        {
          type = "build-entity",
          entity = "burner-inserter",
          count = 1
        },
        {
          type = "build-entity",
          entity = "inserter",
          count = 1
        }
      }
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/inserters-hotkey-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-roboports-hotkey",
    order = "h",
    trigger = 
    {
      type = "or",
      triggers =
      {
        {
          type = "build-entity",
          entity = "roboport",
          count = 1
        },
        {
          type = "build-entity",
          entity = "kr-small-roboport",
          count = 1
        },
        {
          type = "build-entity",
          entity = "kr-large-roboport",
          count = 1
        }
      }
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/roboports-hotkey-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-fusion-reactor",
    order = "i",
    trigger = 
    {
      type = "research",
      technology = "kr-fusion-energy"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/fusion-reactor-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-matter-of-matter",
    order = "j",
    trigger = 
    {
      type = "research",
      technology = "kr-matter-processing"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/matter-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-intergalactic-transceiver",
    order = "k",
    trigger = 
    {
      type = "research",
      technology = "kr-intergalactic-transceiver"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/intergalactic-transceiver-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-radiation",
    order = "l",
    starting_status = "unlocked",
    category = "kr-about-k2",
    indent = 1
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-crusher",
    order = "m",
    trigger = 
    {
      type = "research",
      technology = "kr-crusher"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/crusher-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-wireless-charger",
    order = "n",
    trigger = 
    {
      type = "research",
      technology = "kr-tesla-coil"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/tesla-coil-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-planetary-teleporter",
    order = "l",
    trigger = 
    {
      type = "research",
      technology = "kr-planetary-teleporter"
    },
    category = "kr-about-k2",
    indent = 1,
    image = kr_graphic_mod_path .. "gui/tip&tricks/planetary-teleporter-tip&tricks.png"
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-commands",
    order = "o",
    starting_status = "unlocked",
    category = "kr-about-k2",
    indent = 1
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-achievements",
    order = "p",
    starting_status = "unlocked",
    category = "kr-about-k2",
    indent = 1
  },
  {
    type = "tips-and-tricks-item",
    name = "kr-faq",
    order = "q",
    starting_status = "unlocked",
    category = "kr-about-k2",
    indent = 1
  }
})

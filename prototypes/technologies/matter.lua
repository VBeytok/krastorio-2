data:extend(
{
  {
    type = "technology",
    name = "kr-matter-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-processing.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "kr-matter-plant"
      },
      {
        type = "unlock-recipe",
        recipe = "kr-matter-assembler"
      },
      {
        type = "unlock-recipe",
        recipe = "kr-stabilizer-charging-station"
      },
      {
        type = "unlock-recipe",
        recipe = krastorio.recipes.changed_names["matter-stabilizer"] or "matter-stabilizer"
      },  
      {
        type = "unlock-recipe",
        recipe = krastorio.recipes.changed_names["charge-stabilizer"] or "charge-stabilizer"
      }       
    },
    prerequisites = {"kr-matter-tech-card", "kr-imersium-processing", "kr-energy-control-unit"},
    order = "g-e-d",
    unit =
    {
      count = 1000,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-coal-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-coal.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-copper-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-copper.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-iron-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-iron.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-minerals-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-minerals.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-oil-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-oil.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-stone-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-stone.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-uranium-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-uranium.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-water-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-water.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    },
  {
    type = "technology",
    name = "kr-matter-rare-metals-processing",
    mod = "Krastorio2",
    icon = kr_technologies_icons_path .. "matter-rare-metals.png",
    icon_size = 256, 
    icon_mipmaps = 4,
    effects = {},
    prerequisites = {"kr-matter-processing"},
    order = "g-e-e",
    unit =
    {
      count = 350,
      ingredients = 
      {
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"matter-tech-card", 1}       
      },
      time = 45
    }
    }
})
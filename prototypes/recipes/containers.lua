if krastorio.general.getSafeSettingValue("kr-containers") then
  data:extend{
    -- -- --
    -- MEDIUM CONTEINERS
    -- -- --
    {
      type = "recipe",
      name = "kr-medium-active-provider-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-medium-container", 1},
        {"advanced-circuit", 5},
      },
      subgroup = "kr-logistics-2",
      order = "a[medium-active-provider-container]",
      result = "kr-medium-active-provider-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-medium-buffer-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-medium-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-2",
      order = "b[medium-buffer-container]",
      result = "kr-medium-buffer-container",
      mod = "Krastorio2"
     },
    {
      type = "recipe",
      name = "kr-medium-container",
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"steel-chest", 4},
        {"steel-beam", 2}
      },
      subgroup = "storage",
      order = "a[items]-d[medium-container]",
      result = "kr-medium-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-medium-passive-provider-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-medium-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-2",
      order = "c[medium-passive-provider-container]",
      result = "kr-medium-passive-provider-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-medium-requester-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-medium-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-2",
      order = "d[medium-requester-container]",
      result = "kr-medium-requester-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-medium-storage-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-medium-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-2",
      order = "e[medium-storage-container]",
      result = "kr-medium-storage-container",
      mod = "Krastorio2"
    },
    -- -- --
    -- BIG CONTEINERS
    -- -- --
    {
      type = "recipe",
      name = "kr-big-active-provider-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-big-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-3",
      order = "a[big-active-provider-container]",
      result = "kr-big-active-provider-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-big-buffer-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-big-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-3",
      order = "b[big-buffer-container]",
      result = "kr-big-buffer-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-big-container",
      energy_required = 5,
      enabled = false,
      ingredients =
      {
        {"kr-medium-container", 4},
        {"steel-beam", 10}
      },
      subgroup = "storage",
      order = "a[items]-dz[big-container]",
      result = "kr-big-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-big-passive-provider-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-big-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-3",
      order = "c[big-passive-provider-container]",
      result = "kr-big-passive-provider-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-big-requester-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-big-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-3",
      order = "d[big-requester-container]",
      result = "kr-big-requester-container",
      mod = "Krastorio2"
    },
    {
      type = "recipe",
      name = "kr-big-storage-container",
      energy_required = 1,
      enabled = false,
      ingredients =
      {
        {"kr-big-container", 1},
        {"advanced-circuit", 5}
      },
      subgroup = "kr-logistics-3",
      order = "e[big-storage-container]",
      result = "kr-big-storage-container",
      mod = "Krastorio2"
    }
  }
end

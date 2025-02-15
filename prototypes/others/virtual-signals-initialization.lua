-- -- Adding new signals subgroups
data:extend(
{
  {
    type = "item-subgroup",
    name = "kr-special-signals",
    group = "signals",
    order = "z1"
  },
  {
    type = "item-subgroup",
    name = "kr-special-signals-2",
    group = "signals",
    order = "z2"
  }
})

-- -- Adding new signals (virtual signals)
data:extend(
{ 
  -- -- WARNINGS
  {
    type = "virtual-signal",
    name = "kr-attention_1",
    icon = kr_signals_icons_path .. "attention_1.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-1[attention_1]"
  },
  {
    type = "virtual-signal",
    name = "kr-attention_2",
    icon = kr_signals_icons_path .. "attention_2.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-2[attention_2]"
  },
  {
    type = "virtual-signal",
    name = "kr-attention_3",
    icon = kr_signals_icons_path .. "attention_3.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-3[attention_3]"
  },
  {
    type = "virtual-signal",
    name = "kr-nuclear-1",
    icon = kr_signals_icons_path .. "nuclear-1.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-4[nuclear-1]"
  },
  {
    type = "virtual-signal",
    name = "kr-nuclear-2",
    icon = kr_signals_icons_path .. "nuclear-2.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-5[nuclear-2]"
  },
  {
    type = "virtual-signal",
    name = "kr-biohazard",
    icon = kr_signals_icons_path .. "biohazard.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-6[biohazard]"
  },
  -- UTILITY
  {
    type = "virtual-signal",
    name = "kr-power",
    icon = kr_signals_icons_path .. "power.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-7[power]"
  },
  {
    type = "virtual-signal",
    name = "kr-power_on",
    icon = kr_signals_icons_path .. "power_on.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-8[power_on]"
  },
  {
    type = "virtual-signal",
    name = "kr-power_off",
    icon = kr_signals_icons_path .. "power_off.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-9[power_off]"
  },
  {
    type = "virtual-signal",
    name = "kr-battery",
    icon = kr_signals_icons_path .. "battery.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-a[battery]"
  },
  {
    type = "virtual-signal",
    name = "kr-battery_low",
    icon = kr_signals_icons_path .. "battery_low.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-b[battery_low]"
  },
  {
    type = "virtual-signal",
    name = "kr-star_w",
    icon = kr_signals_icons_path .. "star_w.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-c[star_w]"
  },
  {
    type = "virtual-signal",
    name = "kr-star_b",
    icon = kr_signals_icons_path .. "star_b.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-d[star_b]"
  },
  {
    type = "virtual-signal",
    name = "kr-energy-1",
    icon = kr_signals_icons_path .. "energy_1.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-e[energy-1]"
  },
  {
    type = "virtual-signal",
    name = "kr-energy-2",
    icon = kr_signals_icons_path .. "energy_2.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-e[energy-2]"
  },
  {
    type = "virtual-signal",
    name = "kr-time",
    icon = kr_signals_icons_path .. "time.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-f[time]"
  },
  {
    type = "virtual-signal",
    name = "kr-gear_w",
    icon = kr_signals_icons_path .. "gear_w.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-g[gear_w]"
  },
  {
    type = "virtual-signal",
    name = "kr-gear_b",
    icon = kr_signals_icons_path .. "gear_b.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-h[gear_b]"
  },
  {
    type = "virtual-signal",
    name = "kr-recycling",
    icon = kr_signals_icons_path .. "recycling.png",
    icon_size = 64,
    subgroup = "kr-special-signals",
    order = "a[special-signals]-i[recycling]"
  },
  {
    type = "virtual-signal",
    name = "kr-build_here",
    icon = kr_signals_icons_path .. "build_here.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-1[build_here]"
  },
  {
    type = "virtual-signal",
    name = "kr-dont_touch",
    icon = kr_signals_icons_path .. "dont_touch.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-2[dont_touch]"
  },
  {
    type = "virtual-signal",
    name = "kr-kill",
    icon = kr_signals_icons_path .. "kill.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-3[kill]"
  },
  {
    type = "virtual-signal",
    name = "kr-wtf",
    icon = kr_signals_icons_path .. "wtf.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-4[wtf]"
  },
  {
    type = "virtual-signal",
    name = "kr-heart",
    icon = kr_signals_icons_path .. "heart.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-5[heart]"
  },
  {
    type = "virtual-signal",
    name = "kr-smile",
    icon = kr_signals_icons_path .. "smile.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-zz9[smile]"
  },
  {
    type = "virtual-signal",
    name = "kr-scull",
    icon = kr_signals_icons_path .. "scull.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-zz9[scull]"
  },  
  {
    type = "virtual-signal",
    name = "kr-krastorio",
    icon = kr_signals_icons_path .. "krastorio.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-zzz[krastorio]"
  },  
  {
    type = "virtual-signal",
    name = "kr-question-mark",
    icon = kr_signals_icons_path .. "question-mark.png",
    icon_size = 64,
    subgroup = "kr-special-signals-2",
    order = "a[special-signals]-www[question-mark]"
  } 
})
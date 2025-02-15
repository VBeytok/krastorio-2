data:extend(
{
  {
    type = "corpse",
    name = "kr-superior-splitter-remnant",
    localised_name = {"remnant-name", {"entity-name.kr-superior-splitter"}},
    icon = kr_entities_icons_path .. "transport-belts/superior-transport-belt/superior-splitter.png",
    icon_size = 64,
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    tile_width = 2,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order = "d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = kr_remnants_path .. "transport-belts/superior-transport-belt/splitter/superior-splitter-remnant.png",
      line_length = 1,
      width = 86,
      height = 78,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(1, 3),
      hr_version =
      {
        filename = kr_remnants_path .. "transport-belts/superior-transport-belt/splitter/hr-superior-splitter-remnant.png",
        line_length = 1,
        width = 172,
        height = 156,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 4,
        shift = util.by_pixel(1, 3),
        scale = 0.5
      }
    }
  }
})

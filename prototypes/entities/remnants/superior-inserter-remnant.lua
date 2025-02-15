data:extend(
{
  {
    type = "corpse",
    name = "kr-superior-inserter-remnants",
    localised_name = {"remnant-name", {"entity-name.kr-superior-inserter"}},
    icon = kr_entities_icons_path .. "inserters/superior-inserter.png",
    icon_size = 64,
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet
    (3,
      {
        filename = kr_remnants_path .. "superior-inserter/superior-inserter-remnant.png",
        line_length = 1,
        width = 52,
        height = 42,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(1, 5),
        hr_version =
        {
          filename = kr_remnants_path .. "superior-inserter/hr-superior-inserter-remnant.png",
          line_length = 1,
          width = 102,
          height = 80,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(0.5, 4.5),
          scale = 0.5,
        },
      }
    )
  }
})

data:extend(
{
  {
    type = "corpse",
    name = "kr-mineral-water-pumpjack-remnant",
    localised_name = {"remnant-name", {"entity-name.kr-mineral-water-pumpjack"}},
    icon =  kr_entities_icons_path .. "mineral-water-pumpjack.png",
    icon_size = 64,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(2,
    {
      filename = kr_remnants_path .. "mineral-water-pumpjack/mineral-water-pumpjack-remnant.png",
      line_length = 1,
      width = 138,
      height = 142,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(0, 3),
      hr_version =
      {
        filename = kr_remnants_path .. "mineral-water-pumpjack/hr-mineral-water-pumpjack-remnant.png",
        line_length = 1,
        width = 274,
        height = 284,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, 3.5),
        scale = 0.5
      }
    })
  }
})

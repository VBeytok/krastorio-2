data:extend(
{
  {
    type = "corpse",
    name = "kr-advanced-tank-remnant",
    localised_name = {"remnant-name", {"entity-name.kr-advanced-tank"}},
    icon = kr_vehicles_icons_path .. "advanced-tank.png",
    icon_size = 64,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    selection_box = {{-1.45, -2.35}, {1.45, 2.35}},
    tile_width = 9,
    tile_height = 9,
    selectable_in_game = false,
    subgroup = "remnants",
    order="z[remnants]-a[generic]-b[medium]",
    time_before_removed = 60 * 60 * 20, -- 20 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = kr_entities_path .. "remnants/advanced-tank/advanced-tank-remnant.png",
      line_length = 1,
      width = 200,
      height = 165,
      frame_count = 1,
      direction_count = 1,
      hr_version =
      {
        filename = kr_entities_path .. "remnants/advanced-tank/hr-advanced-tank-remnant.png",
        line_length = 1,
        width = 400,
        height = 330,
        frame_count = 1,
        direction_count = 1,
        scale = 0.5
      }
    })
  }
})

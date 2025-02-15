random_generator = nil
global.crash_site_enabled = true
start_items =
{
  "iron-plate",
  "copper-cable",
  "iron-gear-wheel",
  "electronic-circuit",
  "wood"
}
entities_to_place =
{
  "kr-crash-site-lab-repaired",
  "kr-mineable-wreckage",
  "kr-crash-site-assembling-machine-1-repaired",
  "kr-mineable-wreckage",
  "kr-crash-site-assembling-machine-2-repaired",
  "kr-mineable-wreckage",
  "kr-crash-site-generator",
  "kr-mineable-wreckage",
  "kr-crash-site-chest-1",
  "kr-crash-site-chest-1",
  "kr-crash-site-chest-1",
  "kr-mineable-wreckage",
  "kr-crash-site-chest-2",
  "kr-crash-site-assembling-machine-1-repaired",
  "kr-crash-site-chest-2",
  "kr-crash-site-chest-2",
  "kr-mineable-wreckage",
  "kr-mineable-wreckage",
  "kr-crash-site-assembling-machine-2-repaired",
  "kr-mineable-wreckage",
  "kr-mineable-wreckage"
}

if not remote.interfaces["kr-crash-site"] then
  remote.add_interface("kr-crash-site",
  {
    crash_site_enabled =
    function(bool)
      if type(bool) ~= "boolean" then
        error("Value for 'crash_site_enabled' must be a boolean.")
      end
      global.crash_site_enabled = bool
    end,
    add_crash_site_item =
    function(item_name)
      if type(item_name) ~= "string" then
        error("Value for 'add_crash_site_item' must be a string.")
      end
      table.insert(start_items, item_name)
    end,
    remove_crash_site_item =
    function(item_name)
      if type(item_name) ~= "string" then
        error("Value for 'remove_crash_site_item' must be a string.")
      end
      local finded = true
      while finded do
        finded = false
        for i, name in pairs(start_items) do
          if name == item_name then
            table.remove(start_items, i)
            finded = true
            break
          end
        end
      end
    end,
    add_crash_site_entity =
    function(entity_name)
      if type(entity_name) ~= "string" then
        error("Value for 'add_crash_site_entity' must be a string.")
      end
      table.insert(entities_to_place, entity_name)
    end,
    remove_crash_site_entity =
    function(entity_name)
      if type(entity_name) ~= "string" then
        error("Value for 'remove_crash_site_entity' must be a string.")
      end
      local finded = true
      while finded do
        finded = false
        for i, name in pairs(entities_to_place) do
          if name == entity_name then
            table.remove(entities_to_place, i)
            finded = true
            break
          end
        end
      end
    end
  })
end

local function randomizePosition(start_position, range)
  local x_modifier = (math.random(-1, 1)) * math.random(1, range)
  local y_modifier = (math.random(-1, 1)) * math.random(1, range)

  return {x = start_position.x - x_modifier, y = start_position.y - y_modifier}
end

local function createCrashSite(event)
  if global.crash_site_enabled == nil then
    global.crash_site_enabled = true
  end
  if event.player_index > 1 or global.k2_crash_site_created or not global.crash_site_enabled then
    return false
  end
  global.k2_crash_site_created = true

  local surface = game.surfaces[1]
  local player_force = game.forces[1]
  local start_position = player_force.get_spawn_position(1)
  local to_place_position = nil
  local created_entity = nil
  local insert_one_shelter = false
  local item_name, item_count = nil, nil
  local try_count = 0

  for _, entity_name in pairs(entities_to_place) do
    if entity_name ~= nil and type(entity_name) == "string" then
      try_count = 1
      while try_count < 1000 do
        to_place_position = randomizePosition(start_position, 25)
        to_place_position = surface.find_non_colliding_position(entity_name, to_place_position, 30, 3)
        if to_place_position then
          created_entity = surface.create_entity(
          {
            name = entity_name,
            position = to_place_position,
            force = player_force,
            create_build_effect_smoke = false
          })
          if created_entity.type == "container" then
            local start_items_count = table_size(start_items)
            item_name = start_items[math.random(1, start_items_count)]
            item_name_2 = start_items[math.random(1, start_items_count)]
            item_name_3 = start_items[math.random(1, start_items_count)]
            item_name_4 = start_items[math.random(1, start_items_count)]
            item_count = math.random(5, 50)
            item_count_2 = math.random(5, 50)
            item_count_3 = math.random(5, 50)
            item_count_4 = math.random(5, 50)

            -- First insert mandatory items
            if not insert_one_shelter then
              created_entity.get_inventory(defines.inventory.chest).insert({name = "kr-shelter", count = 1})
              -- Compatibility
              if game.active_mods["IndustrialRevolution"] or game.active_mods["aai-industry"] then
                created_entity.get_inventory(defines.inventory.chest).insert({name = "medium-electric-pole", count = 10})
              else
                created_entity.get_inventory(defines.inventory.chest).insert({name = "wood", count = 100})
              end

              insert_one_shelter = true
            end

            -- Then randoms
            created_entity.get_inventory(defines.inventory.chest).insert({name = item_name, count = item_count})
            created_entity.get_inventory(defines.inventory.chest).insert({name = item_name_2, count = item_count_2})
            created_entity.get_inventory(defines.inventory.chest).insert({name = item_name_3, count = item_count_3})
            created_entity.get_inventory(defines.inventory.chest).insert({name = item_name_4, count = item_count_4})
          end
          break
        else
          try_count = try_count + 1
        end
      end
      if try_count >= 1000 then
        return nil
      end
    end
  end
end

-- With control-callbacks-merger
return
{
  -- -- Bootstrap
  { createCrashSite, "on_player_created" }
}

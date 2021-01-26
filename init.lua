minetest.register_craftitem("teleportcarrot:carrot", {
	description = "Teleporting carrot",
	inventory_image = "telecarrot.png",
	wield_image = "telecarrot.png",
	on_use = function(itemstack, user, pointed_thing)
	   minetest.item_eat(2)
	   math.randomseed(os.time())
	   local random1 = math.random(1, 10)
	   if random1 == 1 then
	      local randomx = math.random(-16, 16)
	      local randomz = math.random(-16, 16)
	      local xpos = user:get_pos().x + randomx
          local ypos = user:get_pos().y
          local zpos = user:get_pos().z + randomz
	      user:set_pos({x = xpos, y =ypos, z =zpos})
	   itemstack:take_item(1)
	   return item
	end
end,
})

minetest.register_craft({
	output = "teleportcarrot:carrot",
	recipe = {
		{"default:obsidian", "default:obsidian", "default:obsidian"},
		{"default:obsidian", "farming:carrot_gold", "default:obsidian"},
		{"default:obsidian", "default:obsidian", "default:obsidian"},
	}
})
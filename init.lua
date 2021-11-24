minetest.register_craftitem("teleport_carrot:carrot", {
	description = "Teleporting carrot",
	inventory_image = "telecarrot.png",
	wield_image = "telecarrot.png",
	on_use = function(itemstack, user)
	   local hp = user:get_hp()
	   user:set_hp(hp + 2)
	   local random1 = math.random(1, 10)
	   if random1 == 1 then
	    	local randomx = math.random(-16, 16)
	    	local randomz = math.random(-16, 16)
	    	local xpos = user:get_pos().x + randomx
        	local zpos = user:get_pos().z + randomz
	    	user:set_pos({x = xpos, y =user:get_pos().y, z =zpos})
		end
		itemstack:take_item(1)
	  	return itemstack
	end,
})

minetest.register_craft({
	output = "teleport_carrot:carrot",
	recipe = {
		{"", "default:obsidian", ""},
		{"default:obsidian", "farming:carrot_gold", "default:obsidian"},
		{"", "default:obsidian", ""},
	}
})
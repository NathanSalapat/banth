mobs:register_mob("banth:banth", {
	type = "monster",
	passive = false,
	reach = 2,
	damage = 4,
	sounds = {attack = "banth_snarl", war_cry = "banth_growl"},
	attack_type = "dogfight",
	hp_min = 22,
	hp_max = 32,
	armor = 90,
	collisionbox = {-1.2, -0.8, -1.2, 1.2, 1.2, 1.2},
	visual = "mesh",
	mesh = "banth.b3d",
	textures = {
		{"banth_color.png"},
	},
	blood_texture = "mobs_blood.png",
	visual_size = {x=12, y=12},
	makes_footstep_sound = true,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 3, max = 10},
	},
	walk_velocity = 3,
	run_velocity = 2,
	stepheight = 1.1,
	water_damage = 0,
	lava_damage = 2,
	light_damage = 0,
	view_range = 14,
	animation = {
		speed_normal = 10,
		speed_run = 20,
		walk_start = 90,
		walk_end = 130,
		stand_start = 1,
		stand_end = 40,
		run_start = 90,
		run_end = 130,
		punch_start = 40,
		punch_end = 90,

	},
	on_rightclick = function(self,clicker)
		mobs:capture_mob(self, clicker, 0, 0, 10, true, nil)
	end
				
})


--mobs:register_spawn(name, nodes, max_light, min_light, chance, active_object_count, max_height, day_toggle)
mobs:register_spawn("banth:banth", {"default:dirt_with_grass","default:stone", "default:sand"}, 20, 10, 750, 2, 31000, false)
mobs:register_egg("banth:banth", "Banth", "default_apple.png", 1)


mobs:register_mob("banth:banth", {
	type = "monster",
	passive = false,
	reach = 3,
	damage = 4,
	sounds = {attack = "banth_snarl", war_cry = "banth_growl"},
	attack_type = "dogfight",
	hp_min = 30,
	hp_max = 40,
	armor = 80,
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
		{name = "mobs:meat_raw", chance = 2, min = 3, max = 10},
		{name = "homedecor:coin", chance = 4, min = 1, max = 3},
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


--mobs:spawn_specific(name, nodes, neighbors, min_light, max_light,interval, chance, active_object_count, min_height, max_height, day_toggle)
mobs:spawn_specific(
	"banth:banth",
	{"default:sand"},      -- } -- spawn banths in ethereal's dry lands oases
	{"ethereal:dry_dirt"}, -- }
	0,  -- }
	20, -- } -- all light levels
	30, -- interval
	100, -- chance: conditions are very specific, so high chance
	2,
	-10,
	31000,
	nil
)

mobs:spawn_specific(
	"banth:banth",
	{"default:dirt_with_grass","default:sand"},  -- } -- spawn banths uneder trees like where cats would go
	{"default:tree","default:acacia_tree"},      -- }
	0,  -- }
	20, -- } -- all light levels
	30, -- interval
	100, -- chance: conditions are very specific, so high chance
	2,
	-10,
	31000,
	nil
)

mobs:register_egg("banth:banth", "Banth", "default_apple.png", 1)


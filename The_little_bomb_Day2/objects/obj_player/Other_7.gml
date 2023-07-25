with (instance_create_layer(x, y, "Instances", obj_explosion))
	effect_create_above(ef_explosion, x, y, 3, c_red)
	image_xscale = 1;
	image_yscale = 1;
	image_speed = 1;
	layer_set_visible("Effect_4", true);
	
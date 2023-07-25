with (instance_create_layer(x, y, "Instances", obj_explosion_child1))
effect_create_above(ef_explosion, x, y, 3, c_yellow)
instance_destroy(self);

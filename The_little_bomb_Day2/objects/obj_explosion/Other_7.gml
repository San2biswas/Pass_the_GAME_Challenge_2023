obj_player.hp = obj_player.hp - choose(1, 2);
obj_player.hascontrol = true;
layer_set_visible("Effect_4", false);
instance_destroy();

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up);
key_e = keyboard_check_pressed(ord("E"));
key_q = keyboard_check_pressed(ord("Q"));
key_r = keyboard_check_pressed(ord("R"));
key_escape = keyboard_check_pressed(vk_escape);


var move = key_right - key_left;

hsp = move * walksp;

if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp), y, obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (hascontrol) x = x + hsp;
vsp = vsp + grv;

if (place_meeting(x, y + vsp, obj_wall))
{
	while (!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
if (hascontrol) y = y + vsp;

if (place_meeting(x, y + 1, obj_wall)) and (key_jump) and (hascontrol)
{
	vsp = -8;
}

//if (hp <= 0) room_restart();			// <!> disabled for developpment
txt = hp;




if key_escape	game_end();
if key_r		game_restart();


if key_e
{
	instance_create_layer(x, y, "Instances", obj_player_child1)
}



grvTimer = grvTimer - 0.01;
if grvTimer < 0 grvTimer = 0;

if key_q && grvTimer == 0 && vsp == 0
{
	grvTimer = 1;
	lVal = y
}
grv = 0.3 - (0.6 * grvTimer*1.05);
if grv < 0.3 
{
	hVal = y;
	distVal = 656 - hVal;
	image_xscale = max(1, (1 * distVal/100));
	image_yscale = image_xscale;
	image_speed = 0.2;
}
if image_speed < 1 && vsp == 0
{
	image_speed = 3;
}


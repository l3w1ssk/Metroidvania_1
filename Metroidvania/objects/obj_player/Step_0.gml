key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;

//if (cur_jmps>max_jmps)
//cur_jmps = max_jmps;

//Horizontal collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp);
	}
	hsp = 0;
	cur_jmps++;
}
x += hsp;
//Vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall)/* && !place_meeting(x,y+sign(vsp),obj_dead)*/)
	{
		y += sign(vsp);
	}
	vsp = 0;
	cur_jmps = max_jmps;
}
y += vsp;


//if (place_meeting(x,y+vsp,obj_dead))
//{
//	while (/*!place_meeting(x,y+sign(vsp),obj_wall) && */!place_meeting(x,y+sign(vsp),obj_dead))
//	{
//		y += sign(vsp);
//	}
//	if (vsp > 3) vsp = 0;
//	cur_jmps = max_jmps;
//}
//y += vsp;

if (/*place_meeting(x,y+1, obj_wall) && */key_jump && (cur_jmps>=1))
{
	cur_jmps--;
	vsp = -14;
}

//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_airborne;
	image_speed = 0;
	if (sign(vsp) > 0)
		image_index = 1;
	else
		image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_player_running;
	}
}

if (hsp != 0)
image_xscale = sign(hsp);

cur_jmps = min (cur_jmps, max_jmps);
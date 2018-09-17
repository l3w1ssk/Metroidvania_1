x = obj_player.x;
y = obj_player.y+20;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (keyboard_check_pressed(ord("F")))
{
	mode = -mode;
}

firing_delay--;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left) && firing_delay < 0 && mode == 1 /*&& !instance_exists(obj_bullet)*/)
{
	recoil = 8;
	firing_delay = 5;
	ScreenShake(2, 10);
	with (instance_create_layer(x,y,"Bullets", obj_bullet))
	{
		speed = 15;
		direction = other.image_angle + random_range(-6,6);
		image_angle = direction;
	}
}

if (mouse_check_button(mb_left) && firing_delay < 0 && mode == -1 /*&& !instance_exists(obj_bullet)*/)
{
	recoil = 16;
	firing_delay = 10;
	with (instance_create_layer(x,y,"Bullets", obj_laser))
	{
		speed = 15;
		direction = other.image_angle;
		image_angle = direction;
	}
}



x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

//if (mouse_x > x) image_yscale = 1; else image_yscale = -1;
if (image_angle > 90 && image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
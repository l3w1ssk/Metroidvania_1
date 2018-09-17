if (hp <= 0)
{
	with(instance_create_layer(x, y, layer, obj_dead))
	{
		direction = other.hit_from;
		hsp = lengthdir_x(6, direction);
		vsp = lengthdir_y(6, direction) - 2;
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	instance_destroy();
}
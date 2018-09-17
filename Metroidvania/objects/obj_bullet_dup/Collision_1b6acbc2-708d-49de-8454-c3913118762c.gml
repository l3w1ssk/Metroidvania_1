with (other)
{
	hp--;
	flash = 3;
	hit_from = other.direction;
}

instance_create_layer(x,y,layer,obj_explosion);

instance_destroy();
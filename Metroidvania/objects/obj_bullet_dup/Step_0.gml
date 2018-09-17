if (mouse_check_button_pressed(mb_right) && bl = 0)
{
	bl_1 = 1;
}

if (bl_1 == 1)
{
	direction = point_direction(x, y, mouse_x, mouse_y);
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}

//if (mouse_check_button_pressed(ord("F"))
//{
//	with(instance_create_layer(x,y,"Bullets", obj_bullet))
//	{
//		direction = direction;
//	}
//	with(instance_create_layer(x,y,"Bullets", obj_bullet))
//	{
//		direction = direction;
//	}
//	with(instance_create_layer(x,y,"Bullets", obj_bullet))
//	{
//		direction = direction;
//	}
//	instance_destroy();
	
//}
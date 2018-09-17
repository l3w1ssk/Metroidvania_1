if (place_meeting(x+col_check,y+col_check,obj_wall) || place_meeting(x+col_check,y-col_check,obj_wall) || place_meeting(x-col_check,y+col_check,obj_wall) || place_meeting(x-col_check,y-col_check,obj_wall))
{
	instance_create_layer(x,y,layer,obj_explosion);
	instance_destroy();
	//direction = -direction;
	//image_angle = direction;
}

if ((x < mouse_x+mouse_circle) && (x > mouse_x-mouse_circle) && (y < mouse_y+mouse_circle) && (y > mouse_y-mouse_circle)) 
{
	bl = 1;
	bl_1 = 0;
}
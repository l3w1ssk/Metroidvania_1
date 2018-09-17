if (place_meeting(x,y,obj_wall)) 
{
	//instance_create_layer(x,y,layer,obj_explosion);
	//instance_destroy();
	direction = -direction;
	image_angle = direction;
}
if (x > room_width || x < 0 || y < 0 || y > room_height) instance_destroy();
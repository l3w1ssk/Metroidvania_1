/// @description Update camera
//mouse_check_button(mb_right) && 
//if (instance_exists(obj_bullet))
//follow = obj_bullet;
//else
//follow = obj_player;

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) / camera_speed;
y += (yTo - y) / camera_speed;

//Clamp the camera inside the room
x = clamp (x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp (y, view_h_half + buff, room_height - view_h_half - buff);

//Screenshake
x+= random_range(-shake_remain, shake_remain);
y+= random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


draw_self();
if (flash>0)
{
	flash--;
	draw_sprite_ext(spr_enemy, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 1);
}
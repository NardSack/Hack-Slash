//draw sprite
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);
draw_set_font(global.font_main)

//draw text
draw_text( x, y, string(hp));
//draw_text( x, y-50, string(attack_timer));

//draw player hitbox
//draw_set_color(c_red);
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);
//draw_set_color(c_white);

//draw ai pathing
if keyboard_check(ord("O"))
{
	draw_path(path, x, y, 0);	
}	

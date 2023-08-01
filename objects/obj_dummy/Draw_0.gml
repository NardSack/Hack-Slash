//draw sprite
draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, 1);

//draw text
draw_text( x, y, string(hp));
//draw size of dmg list
draw_text(x, y -32, string(ds_list_size(damageList))); 

//draw ai pathing
if keyboard_check(ord("O"))
{
	draw_path(path, x, y, 0);	
}	

if keyboard_check_pressed(ord("P")) //lagswitch lmao
{	
	if _debug == true
	{
		_debug = false;
	}
	else
	{
		_debug = true;
	}
}

if _debug == true
{
	draw_set_alpha(0.3)
	mp_grid_draw(global.mp_grid)
	draw_set_alpha(1)
}










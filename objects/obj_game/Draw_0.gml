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
	mp_grid_draw(global.mp_grid);
}










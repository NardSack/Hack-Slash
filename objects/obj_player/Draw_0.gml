//draw weapon behind player
	if aimDir >= 55 && aimDir < 140
	{
		draw_my_weapon()
	}

//draw the player
draw_self();

//draw weapon
	if aimDir >= 140 && aimDir < 360
	{
		draw_my_weapon();
	}
	else if aimDir >= 0 && aimDir < 55
	{
		draw_my_weapon()
	}










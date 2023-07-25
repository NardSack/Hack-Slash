//draw weapon behind player when aiming up
	if aimDir >= 55 && aimDir < 140
	{
		draw_my_weapon()
	}

//draw the player
draw_self();

//draw weapon in front of player
	if aimDir >= 140 && aimDir < 360
	{
		draw_my_weapon();
	}
	else if aimDir >= 0 && aimDir < 55
	{
		draw_my_weapon()
	}

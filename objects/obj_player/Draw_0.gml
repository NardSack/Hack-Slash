//draw weapon behind player when aiming up
	if aimDir >= 55 && aimDir < 140
	{
		draw_my_weapon()
	}

//draw the player
draw_self();
// draw player hp (to be changed)
draw_text( x, y, "health: "+string(hp)	);
//draw weapon in front of player
	if aimDir >= 140 && aimDir < 360
	{
		draw_my_weapon();
	}
	else if aimDir >= 0 && aimDir < 55
	{
		draw_my_weapon()
	}

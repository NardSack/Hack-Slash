//draw weapon behind player when aiming up
	if aimDir >= 55 && aimDir < 140
	{
		draw_my_weapon()
	}

//draw the player
draw_self();

//draw player hitbox
draw_set_color(c_red);
draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);
draw_set_color(c_white);

// draw player hp
draw_text( x, y, string(hp));

//draw weapon in front of player
	if aimDir >= 140 && aimDir < 360
	{
		draw_my_weapon();
	}
	else if aimDir >= 0 && aimDir < 55
	{
		draw_my_weapon()
	}

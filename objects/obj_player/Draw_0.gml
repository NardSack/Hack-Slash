//draw weapon behind player when aiming up
	if aimDir >= 55 && aimDir < 140
	{
		draw_my_weapon()
	}

//draw the player
draw_self();

//draw player hitbox
//draw_set_color(c_red);
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1);
//draw_set_color(c_white);

// draw player hp
//draw_text( x+20, y, string(hp));
//draw_text( x-60, y, string(energy));

//draw weapon in front of player
	if aimDir >= 140 && aimDir < 360
	{
		draw_my_weapon();
	}
	else if aimDir >= 0 && aimDir < 55
	{
		draw_my_weapon()
	}

//draw interact prompt
if (place_meeting(x, y, obj_speaktrigger_interact)||place_meeting(x, y, obj_speaktrigger_interact_break))&& is_reading == false
	{
		draw_set_font(-1);
		draw_text(x-14, y-60, "[F]");
		draw_set_font(global.font_main);
	}
if action =="stun"
{
	draw_set_color(c_yellow)
	draw_text(x+30,y-30,$"TRAPPED")
	draw_set_color(c_white)

}
	
	
	
	
	
	
	
	
	
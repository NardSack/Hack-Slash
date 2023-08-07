//state machine
switch (bullet_state)
{
	case 0:
		if instance_exists(obj_player)
			{
				dir = point_direction(x, y, obj_player.x, obj_player.y);	
			}
			
			depth = -y -50;

	break;
	
	//shoot / travel
	
	case 1:
		//movement
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd,dir);
		x += xspd;
		y += yspd;
		
		//update depth 
		depth = -y;
	break;
	
}


//clean up

	//if out of room
	var _pad = 32;
	if bbox_right < -_pad || bbox_left > room_width + _pad || bbox_bottom < -_pad || bbox_top > room_height + _pad
	{
		destroy = true;	
	}
	
	// actually destroy
	if destroy == true { instance_destroy(); };

	//collision w/ wall
	if place_meeting(x, y, obj_solidwall) { destroy = true; };

	//collision w/ player
	if place_meeting(x, y, obj_player) && playerDestroy == true { destroy = true; }




















	//collision
	if place_meeting( x, y, obj_solidwall) //only collide with solid walls
		{
			destroy = true;
		}
	
	//move
	if destroy == false
		{
		
		xspd = lengthdir_x( spd, dir);
		yspd = lengthdir_y( spd, dir);
		
		x+= xspd;
		y+= yspd;
	
		}
	
	//cleanup code
	
	//hit confirm destroy
	if hitConfirm == true && enemyDestroy == true
		{
			destroy = true;
		}

	//destroy (check true before setting true, so it is able to actually detect collision)
	if destroy == true
		{
			instance_destroy();
		}

	//bullet out of range
	if point_distance(xstart, ystart, x, y) > maxDist 
		{
			destroy = true;
		}









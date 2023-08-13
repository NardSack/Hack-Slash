//move bullet
if !instance_exists(obj_pauser)
{
if destroy == false
	{
		xspd = lengthdir_x(spd, dir);
		yspd = lengthdir_y(spd,dir);
		x += xspd;
		y += yspd;
	}	
//update depth 
depth = -y;

//clean up

	//if out of room
	var _pad = 32;
	if bbox_right < -_pad || bbox_left > room_width + _pad || bbox_bottom < -_pad || bbox_top > room_height + _pad
	{
		destroy = true;	
	}
	
	// actually destroy
	if destroy == true
		{	
			destroy_anim = true;
			sprite_index = s_break;
		}	

	//collision w/ wall
	if place_meeting(x, y, obj_solidwall)
	{ 
		destroy = true;
	}

	//collision w/ player
	if place_meeting(x, y, obj_player) && enemyDestroy == true 
	{ 
		destroy = true;
	}
	
	//collision w/ sword
	if place_meeting(x, y, obj_SwordHitBox) && parryCreated == false
	{
		parryCreated = true;
		destroy = true;
		
		audio_play_sound(snd_parry, 1, 0);
		
		if instance_exists(obj_player) && obj_player.hp > 0 //heal on parry
		{
			obj_player.hp += damage/4;	
		}
		
		with (instance_create_depth(x, y, depth, obj_lucent_shot_reflect)) //create parried projectile
			{
				dir = other.dir - 180;
				spd= other.spd * 2;
			}
	}


}


















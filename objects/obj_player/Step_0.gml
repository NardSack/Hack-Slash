/// @description Insert description here
// You can write your code in this editor


_right =keyboard_check(ord("D"))
_left = keyboard_check(ord("A"))
_up =keyboard_check(ord("W"))
_down = keyboard_check(ord("S"))

dash= keyboard_check_pressed(vk_shift)||keyboard_check_pressed(vk_space)
xdir=_right-_left
ydir=_down-_up


//walk animation
/*	if (xdir>0)
	{
		sprite_index=spr_playerwalk_right;
	}
	else if (xdir<0)
	{
		sprite_index=spr_playerwalk_left;
	}
		else if (ydir>0)
	{
		sprite_index=spr_playerwalk_down;
	}
		else if (ydir<0)
	{
		sprite_index=spr_playerwalk_up;
	} 
*/
//movement
if(candash)&&(dash)&&(_right||_left||_down||_up)&&(dashcooldown<1)&&(!place_meeting(x+_xsped,y+_ysped,obj_wall))
{
// dash animation
	if (xdir>0)
	{
		sprite_index=spr_playerdash_right;
		image_speed=1 
	}
	else if (xdir<0)
	{
		sprite_index=spr_playerdash_left;
		image_speed=1
	}
		else if (ydir>0)
	{
		sprite_index=spr_playerdash_down;
		image_speed=1
	}
		else if (ydir<0)
	{
		sprite_index=spr_playerdash_up;
		image_speed=1
	}

	
	candash =false
	dashcooldown=50
	
	dashdirection = point_direction(0,0,_right-_left,_down-_up)
	dashsp=dashdis/dashtime
	dashleft= dashdis
	state = statedash
}

state()
dashcooldown-=1
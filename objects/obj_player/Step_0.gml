/// @description Insert description here
// You can write your code in this editor


_right =keyboard_check(ord("D"))
_left = keyboard_check(ord("A"))
_up =keyboard_check(ord("W"))
_down = keyboard_check(ord("S"))

dash= keyboard_check_pressed(vk_shift)||keyboard_check_pressed(vk_space)
xdir=_right-_left
ydir=_down-_up
xdirIntent = undefined
ydirIntent = undefined
//direction storage
// x
if (xdir>0) 
{ 
	xdirIntent = true
}
else if (xdir<0) 
{ 
	xdirIntent = false
}

//y
if (ydir>0) 
{ 
	ydirIntent = true
}
else if (ydir<0) 
{ 
	ydirIntent = false
}

//walk animation
if (keyboard_check(ord("W"))^^keyboard_check(ord("A"))^^keyboard_check(ord("S"))^^keyboard_check(ord("D")))
{
	is_busy = true;
	if (xdir>0)
		{
			image_speed=1;
			sprite_index=spr_playerwalk_right;
			is_busy=false;
		}
	else if (xdir<0)
		{
			image_speed=1;
			sprite_index=spr_playerwalk_left;
			is_busy=false;
		}
	else if (ydir>0)
		{
			image_speed=1;
			sprite_index=spr_playerwalk_down;
			is_busy=false;
		}
	else if (ydir<0)
		{
			image_speed=1;
			sprite_index=spr_playerwalk_up
			is_busy=false;
	} 
}
else
{
	is_busy=false;
}

//busy (if)
if (!is_busy)
{
	if (ydirIntent==true)
	{
		sprite_index=spr_playeridle_down;
		ydirIntent=undefined
	}
	else if (ydirIntent==false)
	{
		sprite_index=spr_playeridle_up;
		ydirIntent=undefined
	}	
	if (xdirIntent==true)
	{
		sprite_index=spr_playeridle_right;
		xdirIntent=undefined
	}
	else if (xdirIntent==false)
	{
		sprite_index=spr_playeridle_left;
		xdirIntent=undefined
	}
}

//movement dash
/*
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
*/

state()
dashcooldown-=1
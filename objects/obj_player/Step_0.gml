/// @description Insert description here
// You can write your code in this editor


_right =keyboard_check(ord("D"))
_left = keyboard_check(ord("A"))
_up =keyboard_check(ord("W"))
_down = keyboard_check(ord("S"))

dash= keyboard_check_pressed(vk_shift)||keyboard_check_pressed(vk_space)
//movement
if(candash)&&(dash)&&(_right||_left||_down||_up)&&(dashcooldown<1)
{
	xdir=_right-_left
	ydir=_down-_up
	if (xdir>0)
	{
		sprite_index=spr_playerdash_right;
	}
	else if (xdir<0)
	{
		sprite_index=spr_playerdash_left;
	}
		else if (ydir>0)
	{
		sprite_index=spr_playerdash_down;
	}
		else if (ydir<0)
	{
		sprite_index=spr_playerdash_up;
	}
	candash =false
	dashcooldown=50
	image_speed=1
	dashdirection = point_direction(0,0,_right-_left,_down-_up)
	dashsp=dashdis/dashtime
	dashleft= dashdis
	state = statedash
}

state()
dashcooldown-=1
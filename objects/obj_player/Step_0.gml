/// @description Insert description here
// You can write your code in this editor


right =keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
up =keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
_movement= down||up||left||right

dash= keyboard_check_pressed(vk_shift)||keyboard_check_pressed(vk_space)
xdir=right-left
ydir=down-up



//walk animation
if (_movement)
{

	if (down)// check going down
		{
			image_speed=1;
			sprite_index=spr_playerwalk_down;
			
		}
	else if (up)
		{
			image_speed=1;
			sprite_index=spr_playerwalk_up
		} 
	if (right)//check going to right
		{
			image_speed=1;
			sprite_index=spr_playerwalk_right;
			
		}
	else if (left)
		{
			image_speed=1;
			sprite_index=spr_playerwalk_left;
			
		}
}
//movement dash

//lock dirction
//decrease from dash to walk gradually

//lock the player control until dash finish

//conditions for dashing
if (_movement)&&(playercontrol)&&(dash)
{
	dashsp = 7
	playercontrol = false
	while (dashsp >=movespeed)||(dashsp==0)
	{
		_ysped=0
		_xsped=0
		//diagonal movement dash
		if (left)&&(up)
		{
			_xsped=-dashsp
			_ysped=-dashsp
		}
		else if (right)&&(up)
		{
			_xsped=dashsp
			_ysped=-dashsp
		}
		else if (left)&&(down)
		{
			_xsped=-dashsp
			_ysped=dashsp
		}
		else if (right)&&(down)
		{
			_xsped=dashsp
			_ysped=dashsp
		}
		//horizontal movement dash
		else if (right)
		{
			_xsped=dashsp
		}
		else if (left)
		{
			_xsped=-dashsp
		}
		// vertical movement dash
		else if (up)
		{
			_ysped=-dashsp
		}
		else if (down)
		{
			_ysped=dashsp
		}
		checkcollisiondash()
		
		dashsp-=1
	}
	playercontrol = true
}

//idle animation

if(_movement==false)
{
	if(sprite_index==spr_playerwalk_down)
	{
		sprite_index=spr_playeridle_down
	}
	else if (sprite_index==spr_playerwalk_up)
	{
		sprite_index=spr_playeridle_up
	}
	else if (sprite_index==spr_playerwalk_right)
	{
		sprite_index=spr_playeridle_right
	}
	else if (sprite_index==spr_playerwalk_left)
	{
		sprite_index=spr_playeridle_left
	}
}








state()
  
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1E033723
/// @DnDArgument : "code" "y=128$(13_10)x=128$(13_10)$(13_10)movespeed=3$(13_10)_xsped=0$(13_10)_ysped=0$(13_10)candash= true $(13_10)dashdis=70$(13_10)dashtime=10$(13_10)dashcooldown=0$(13_10)$(13_10) StateFree=function()$(13_10){$(13_10)_xsped = (_right-_left)*movespeed$(13_10)_ysped = (_down-_up)*movespeed$(13_10)$(13_10)$(13_10)//collision$(13_10)if(place_meeting(x+_xsped,y+_ysped,obj_wall))$(13_10){$(13_10)	while(abs(_xsped)>0.1||abs(_ysped)>0.1)$(13_10)	{$(13_10)		if(abs(_xsped)>0.1)$(13_10)		{$(13_10)			_xsped *= 0.5$(13_10)			if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) x+=_xsped;$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)            _ysped *= 0.5$(13_10)			if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) y+=_ysped;$(13_10)		}$(13_10)	}$(13_10)	_xsped=0$(13_10)	_ysped=0$(13_10)}$(13_10)x+=_xsped$(13_10)y+=_ysped $(13_10)//move_and_collide(_xsped*movespeed,_ysped*movespeed,obj_wall)$(13_10)}$(13_10)statedash=function()$(13_10){$(13_10)_xsped = lengthdir_x(dashsp,dashdirection)$(13_10)_ysped = lengthdir_y(dashsp,dashdirection)$(13_10)	if(place_meeting(x+_xsped,y+_ysped,obj_wall))$(13_10)	{$(13_10)		while(abs(_xsped)>0.1||abs(_ysped)>0.1)$(13_10)		{$(13_10)			if(abs(_xsped)>0.1)$(13_10)			{$(13_10)				_xsped *= 0.5$(13_10)				if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) x+=_xsped;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)	            _ysped *= 0.5$(13_10)				if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) y+=_ysped;$(13_10)			}$(13_10)		}$(13_10)		_xsped=0$(13_10)		_ysped=0$(13_10)	}$(13_10)		//ending dash$(13_10)		dashleft-=dashsp$(13_10)		if(dashleft<=0)$(13_10)		{$(13_10)				if (xdir>0)$(13_10)		{$(13_10)			sprite_index=spr_playeridle_right;$(13_10)		}$(13_10)		else if (xdir<0)$(13_10)		{$(13_10)			sprite_index=spr_playeridle_left;$(13_10)		}$(13_10)			else if (ydir>0)$(13_10)		{$(13_10)			sprite_index=spr_playeridle_down;$(13_10)		}$(13_10)			else if (ydir<0)$(13_10)		{$(13_10)			sprite_index=spr_playeridle_up;$(13_10)		}$(13_10)			_xsped=0$(13_10)			_ysped=0$(13_10)			candash=true$(13_10)			state=StateFree$(13_10)		}$(13_10)	$(13_10)	x+=_xsped$(13_10)    y+=_ysped	$(13_10)}$(13_10)state = StateFree"
y=128
x=128

movespeed=3
_xsped=0
_ysped=0
candash= true 
dashdis=70
dashtime=10
dashcooldown=0

 StateFree=function()
{
_xsped = (_right-_left)*movespeed
_ysped = (_down-_up)*movespeed


//collision
if(place_meeting(x+_xsped,y+_ysped,obj_wall))
{
	while(abs(_xsped)>0.1||abs(_ysped)>0.1)
	{
		if(abs(_xsped)>0.1)
		{
			_xsped *= 0.5
			if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) x+=_xsped;
		}
		else
		{
            _ysped *= 0.5
			if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) y+=_ysped;
		}
	}
	_xsped=0
	_ysped=0
}
x+=_xsped
y+=_ysped 
//move_and_collide(_xsped*movespeed,_ysped*movespeed,obj_wall)
}
statedash=function()
{
_xsped = lengthdir_x(dashsp,dashdirection)
_ysped = lengthdir_y(dashsp,dashdirection)
	if(place_meeting(x+_xsped,y+_ysped,obj_wall))
	{
		while(abs(_xsped)>0.1||abs(_ysped)>0.1)
		{
			if(abs(_xsped)>0.1)
			{
				_xsped *= 0.5
				if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) x+=_xsped;
			}
			else
			{
	            _ysped *= 0.5
				if(!place_meeting(x+_xsped,y+_ysped,obj_wall)) y+=_ysped;
			}
		}
		_xsped=0
		_ysped=0
	}
		//ending dash
		dashleft-=dashsp
		if(dashleft<=0)
		{
				if (xdir>0)
		{
			sprite_index=spr_playeridle_right;
		}
		else if (xdir<0)
		{
			sprite_index=spr_playeridle_left;
		}
			else if (ydir>0)
		{
			sprite_index=spr_playeridle_down;
		}
			else if (ydir<0)
		{
			sprite_index=spr_playeridle_up;
		}
			_xsped=0
			_ysped=0
			candash=true
			state=StateFree
		}
	
	x+=_xsped
    y+=_ysped	
}
state = StateFree
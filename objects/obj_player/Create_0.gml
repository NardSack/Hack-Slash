y=128
x=128

movespeed=3
_xsped=0
_ysped=0
candash= true 
dashdis=100
dashtime=10
dashcooldown=0

// game speed
//game_set_speed(60,gamespeed_fps)
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
/*
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
		//idle animation
		if(dashleft<=0)
		{
		
			_xsped=0
			_ysped=0
			candash=true
			state=StateFree
		}
	
	x+=_xsped
    y+=_ysped	
}
*/
state = StateFree
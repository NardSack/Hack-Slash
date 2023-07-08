y=128
x=128

movespeed=3
_xsped=0
_ysped=0
playercontrol=true

dashsp=0
// game speed
//game_set_speed(60,gamespeed_fps)
 StateFree=function()
{
_xsped = (right-left)*movespeed
_ysped = (down-up)*movespeed


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
if (playercontrol)
{
	x+=_xsped
	y+=_ysped
}

//move_and_collide(_xsped*movespeed,_ysped*movespeed,obj_wall)
}

checkcollisiondash =function()
{

	if(place_meeting(x+_xsped,y+_ysped,obj_wall))
	{
		while(abs(_xsped)>0.1||abs(_ysped)>0.1)
		{
			if(abs(_xsped)>0.1)
			{
				_xsped *= 0.5
				if(!place_meeting(x+_xsped,y+_ysped,obj_wall))
				{x+=_xsped;}
			}
			else if (abs(_ysped)>0.1)
			{
	            _ysped *= 0.5
				if(!place_meeting(x+_xsped,y+_ysped,obj_wall))
				{ y+=_ysped;}
			}
		}
		_xsped=0
		_ysped=0
		dashsp=0
		
	}
		x+=_xsped
		y+=_ysped
}

state = StateFree
y=128
x=128

movespeed=3
_xsped=0
_ysped=0
playercontrol=true
Dashsp = 9
isBusy = false
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
	x+=_xsped
	y+=_ysped//move_and_collide(_xsped*movespeed,_ysped*movespeed,obj_wall)
}

StateDash=function ()
 {
isDashing = true
_xsped = xd*Dashsp
_ysped = yd*Dashsp
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
	Dashsp-=0.20
	if (Dashsp == movespeed||(_xsped==0&&_ysped==0))
	{
		playercontrol=true
			state = StateFree
	}
 }
state = StateFree
//base variables
movespeed=3
_xsped=0
_ysped=0
playercontrol=true
Dashsp = 9
isBusy = false

 StateFree=function()
{
_xsped = (right-left)*movespeed
_ysped = (down-up)*movespeed

//aim direction

aimDir = 0;
weaponOffsetDist = 6;

//collision
if(place_meeting(x+_xsped,y+_ysped,obj_wall)) //if next frame will collide with wall
{
	while(abs(_xsped)>0.1||abs(_ysped)>0.1)
	{
		if(abs(_xsped)>0.1)
		{
			_xsped *= 0.5
			if(!place_meeting(x+_xsped,y+_ysped,obj_wall))
			x+=_xsped;
		}
		else
		{
            _ysped *= 0.5
			if(!place_meeting(x+_xsped,y+_ysped,obj_wall))
			y+=_ysped;
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

//weapon info
	shootTimer = 0;
	
	//add weapons to player weapon inventory
	array_push( global.PlayerWeapons, global.WeaponList.revolver);
	array_push( global.PlayerWeapons, global.WeaponList.shotgun);
	
	selectedWeapon = 0;
	weapon = global.PlayerWeapons[selectedWeapon];
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
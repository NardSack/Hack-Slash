//controls
right =keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up =keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

//_movement= down||up||left||right;
dash= keyboard_check_pressed(vk_space);/*||keyboard_check_pressed(vk_shift)*/
inputX=0
inputY=0
inputX=right-left;
inputY=down-up;
checkdone=true;


if (action=="move")
{
	#region move
//movement declare
moveSpeed=2;
moveX=lerp(moveX,inputX*moveSpeed,0.2);
moveY=lerp(moveY,inputY*moveSpeed,0.2);




//collision
if(place_meeting(x+moveX,y+moveY,obj_wall)) //if next frame will collide with wall
{
	while(abs(moveX)>0.1||abs(moveY)>0.1)
	{
		if(abs(moveX)>0.1)
		{
			moveX *= 0.5
			if(!place_meeting(x+moveX,y,obj_wall))
			x+=moveX;
		}
		if abs(moveY)>0.1
		{
            moveY *= 0.5
			if(!place_meeting(x,y+moveY,obj_wall))
			y+=moveY;
		}
	}
	moveX=0
	moveY=0
}
//	x+=_xsped
//	y+=_ysped//move_and_collide(_xsped*movespeed,_ysped*movespeed,obj_wall)}
if (state != states.attackdown && state != states.attackhorizontal && state != states.attackup)
{

	x+=moveX
	y+=moveY
	
	if ((state==states.walkdown||state==states.walkup||state==states.walkhorizon)&&(inputX==0&&inputY==0)&&checkdone)
	{
		checkdone=false;
		if (state==states.walkdown)
		{
			state_set(states.idledown)
		}
		else if(state==states.walkup)
		{
			state_set(states.idleup)
		}
		else if (state==states.walkhorizon)
		{
			state_set(states.idlehorizon)
		}
	}
	
	//flip
	if (inputX !=0 &&checkdone)
	{
	image_xscale = sign(inputX);
	dir=sign(inputX)
	state_set(states.walkhorizon);
	}
	else if (inputY !=0 &&checkdone){
		image_xscale= dir
		if (inputY<=0)
		{
			state_set(states.walkup);
		}
		else
		{	
			state_set(states.walkdown);
		}
	}

	//Attack
	if (keyboard_check_pressed(vk_shift))
	{
		checkdone=false;
		ydir=0
		if (dir== -1)
			{ydir= 1}
		else if (dir == 1)
			{ydir= (-1)}
			if (inputX !=0 && inputY==0){
			image_xscale = sign(inputX);
			state_set(states.attackhorizontal);
			}
			else if (inputX ==0 && inputY==0)
			{
				image_xscale=dir;
				

				if (state== states.walkhorizon|| state==states.idlehorizon)
				{

					state_set(states.attackhorizontal)
				}
				else if (state== states.walkup||state==states.idleup)
				{
					state_set(states.attackup)
				}
				else if (state== states.walkdown||state==states.idledown)
				{
					image_xscale=ydir
					state_set(states.attackdown)
				}
			}

			else if (inputY <0)// condition wrong
			{
				state_set(states.attackup);
			}
			else if (inputY>0)
			{
				image_xscale=ydir
				state_set(states.attackdown);
			}
	}
	if (dash)
	{
		action="dash"
		image_index=0
		dashy=inputY
		dashx=inputX
		moveSpeed=6;
	}

	
}
#endregion
}

if action == "dash"
{#region dash
if state== states.walkhorizon||state==states.idlehorizon
{
	state_set(states.dashhorizonal)
	if dashx == 0
	{
		dashx= dir
	}
}
else if state== states.walkup||state==states.idleup
{
	state_set(states.dashup)
	if dashy == 0 
	{
		dashy= -1
	}
}
else if state== states.walkdown||state==states.idledown
{
	state_set(states.dashdown)
		if dashy == 0 
	{
		dashy= 1
	}
}

moveX=lerp(moveX,dashx*moveSpeed,0.2);
moveY=lerp(moveY,dashy*moveSpeed,0.2);
//collision
if(place_meeting(x+moveX,y+moveY,obj_wall)) //if next frame will collide with wall
{
	while(abs(moveX)>0.1||abs(moveY)>0.1)
	{
		if(abs(moveX)>0.1)
		{
			moveX *= 0.5
			if(!place_meeting(x+moveX,y,obj_wall))
			x+=moveX;
		}
		if abs(moveY)>0.1
		{
            moveY *= 0.5
			if(!place_meeting(x,y+moveY,obj_wall))
			y+=moveY;
		}
	}
	moveX=0
	moveY=0
}
	x+=moveX
	y+=moveY
	if moveSpeed > 2
	{
	moveSpeed-=0.1
	}
#endregion
}



//depth
depth = -bbox_bottom;
  
//aim direction

shootKey = mouse_check_button(mb_left);

swapKey1 = keyboard_check_pressed((ord("1")));
swapKey2 = keyboard_check_pressed((ord("2")));



aimDir = point_direction(x, y, mouse_x, mouse_y);
	
//weapon swapping

var _playerWeapons = global.PlayerWeapons;
	
//cycle through weapons (wrap system)
#region
/*if swapKeyPressed
{
		
	//change selection and wrap around
	selectedWeapon++;
	//wrap around if at end of array
	if selectedWeapon >= array_length(_playerWeapons) { selectedWeapon = 0 };
	//set new weapon
	weapon = _playerWeapons[selectedWeapon];
		
}*/
#endregion
	
//cycle through weapons (key press system)
if swapKey1 { weapon = _playerWeapons[0] }
if swapKey2 {weapon = _playerWeapons[1] }
	
	
//shooting the weapon
if shootTimer > 0 { shootTimer--; }; //decrease timer
if shootKey	&& shootTimer <= 0
{
		
	//reset timer
	shootTimer = weapon.cooldown;
		
	//create bullet
	var _xOffset = lengthdir_x( weapon.length + weaponOffsetDist, aimDir)
	var _yOffset = lengthdir_y( weapon.length + weaponOffsetDist , aimDir)
		
	var _spread = weapon.spread;
	var _spreadDiv = _spread / max( weapon.bulletNum-1 , 1 ) ; //angle is divided by amt of bullets, defaults to 1 if amt of bullets is 1
		
	//create the corect num of bullets
	for (var i = 0; i < weapon.bulletNum; i++ ) //foreach bullet
	{
		
		//create bullet
		var _bulletInst = instance_create_depth( x + _xOffset + 3, y + _yOffset - 9, depth-100, weapon.bulletObj);
	
		//change bullet direction
		with (_bulletInst)
		{
				
			dir = other.aimDir - _spread/2 + _spreadDiv*i; //spread out the bullets
				
			//turn the bullet to face correct direction at creation if needed
			if dirFix == true 
			{
				image_angle = dir;
			}
				
			//strech bullet if high speed
			if highSpeed == true
			{
				image_xscale = max(1, spd/sprite_width)
			}
				
		}
			
	}
		
	audio_play_sound(snd_pistolshot,1,0) //play sound (change later)
		
}
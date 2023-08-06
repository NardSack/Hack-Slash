//controls
right =keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up =keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

meleeKey = keyboard_check_pressed(vk_shift);
interactKey = keyboard_check_pressed(ord("F"));

shootKey = mouse_check_button(mb_left);

swapKey1 = keyboard_check_pressed((ord("1")));
swapKey2 = keyboard_check_pressed((ord("2")));
swapKey3 = keyboard_check_pressed((ord("3")));

dash= keyboard_check_pressed(vk_space);/*||keyboard_check_pressed(vk_shift)*/

inputX=0
inputY=0
inputX=right-left;
inputY=down-up;
checkdone=true;

if (action=="move")
{

	#region move
	dashCheck = false;
	//movement declare
	moveSpeed=1.5;
	moveX=lerp(moveX,inputX*moveSpeed,0.2);
	moveY=lerp(moveY,inputY*moveSpeed,0.2);


if read_timer > 0
{
	read_timer--;	
}

//collision
if(place_meeting(x+moveX + hsp,y+moveY + vsp,obj_wall)) //if next frame will collide with wall
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
	moveX=0;
	moveY=0;
	hsp = 0;
	vsp = 0;
}
else
{
	//apply knockback movement
	x+= hsp;
	y+= vsp;
	hsp = lerp(hsp, 0, 0.15)
	vsp = lerp(vsp, 0, 0.15)	
}
//	x+=_xsped
//	y+=_ysped//move_and_collide(_xsped*movespeed,_ysped*movespeed,obj_wall)}

if (state != states.attackdown && state != states.attackhorizontal && state != states.attackup)
{
	gun_alpha = 1;
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
	if (meleeKey)
	{
		checkdone=false;
		ydir=0
		if (dir== -1)
			{ydir= 1}
		else if (dir == 1)
			{ydir= (-1)}
			if (inputX !=0 && inputY==0){
			image_xscale = sign(inputX);
			state_set_attack(states.attackhorizontal);
			}
			else if (inputX ==0 && inputY==0)
			{
				image_xscale=dir;
				

				if (state== states.walkhorizon|| state==states.idlehorizon)
				{

					state_set_attack(states.attackhorizontal)
				}
				else if (state== states.walkup||state==states.idleup)
				{
					state_set_attack(states.attackup)
				}
				else if (state== states.walkdown||state==states.idledown)
				{
					image_xscale=ydir
					state_set_attack(states.attackdown)
				}
			}

			else if (inputY <0)// condition wrong
			{
				state_set_attack(states.attackup);
			}
			else if (inputY>0)
			{
				image_xscale=ydir
				state_set_attack(states.attackdown);
			}
	}
	if (dash)
	{
		action="dash"
		gun_alpha = 0;
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
dashCheck = true;
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

//damage code function
get_damaged(obj_damage_player, true);

//depth
depth = -bbox_bottom;
  
//aim direction

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
if swapKey2 { weapon = _playerWeapons[1] }
if swapKey3 { weapon = _playerWeapons[2] }
	
	
//shooting the weapon
if revolverTimer > 0 { revolverTimer--; }; //decrease timer for revolver
if shotgunTimer > 0 { shotgunTimer--; }; //decrease timer for shotgun
if railgunTimer > 0 { railgunTimer--;}; //decrease timer for railgun

if dashCheck == false
	{
		if (hp - weapon.cost) > 0
			{
				if weapon == _playerWeapons[0]
					{
						if shootKey	&& revolverTimer <= 0
							{
								revolverTimer = weapon.cooldown;
								shoot_weapon();
								audio_play_sound(snd_pistolshot,1,0) //play sound (change later)
							}
					}
				if weapon == _playerWeapons[1]
					{
						if shootKey	&& shotgunTimer <= 0
							{
								shotgunTimer = weapon.cooldown;
								shoot_weapon();
								audio_play_sound(snd_pistolshot,1,0) //play sound (change later)
							}
					}
				if weapon == _playerWeapons[2]
					{
						if shootKey	&& railgunTimer <= 0
							{
								railgunTimer = weapon.cooldown;
								shoot_weapon();
								audio_play_sound(snd_pistolshot,1,0) //play sound (change later)
							}
					}
			}
	}
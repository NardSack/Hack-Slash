//controls
right =keyboard_check(ord("D"))
left = keyboard_check(ord("A"))
up =keyboard_check(ord("W"))
down = keyboard_check(ord("S"))
_movement= down||up||left||right


shootKey = mouse_check_button(mb_left);

swapKey1 = keyboard_check_pressed((ord("1")));
swapKey2 = keyboard_check_pressed((ord("2")));

dash= /*keyboard_check_pressed(vk_shift)||*/keyboard_check_pressed(vk_space)
xdir=right-left
ydir=down-up

//depth
depth = -bbox_bottom;

//walk animation
if (_movement)
{
	
	if (down&&(down-up !=0))// check going down
		{
			image_speed=1;
			sprite_index=spr_playerwalk_down;
		}
	else if (up&&(down-up !=0))
		{
			image_speed=1;
			sprite_index=spr_playerwalk_up
		} 
	if (right&&(right-left!=0))//check going to right
		{
			image_speed=1;
			sprite_index=spr_playerwalk_right;
		}
	else if (left&&(right-left!=0))
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
if (dash&&_movement&&playercontrol&&(xdir!=0||ydir!=0)&&(!isBusy))
{
	Dashsp=9
	playercontrol=false
	xd=xdir
	yd=ydir

	state=StateDash
	
}

if(state == StateDash) 
{
		if (xd>0)&&(!isBusy)//check going to right
		{
			isBusy=true;
			
			sprite_index=spr_playerdash_right;
			image_speed=1;
		}
	else if (xd<0)&&(!isBusy)
		{
			isBusy=true;

			sprite_index=spr_playerdash_left;
			image_speed=1;
		}
		if (yd>0)&&(!isBusy)// check going down
		{
			isBusy=true;

			sprite_index=spr_playerdash_down;
			image_speed=1;
		}
	else if (yd<0)&&(!isBusy)
		{
			isBusy=true;

			sprite_index=spr_playerdash_up;
			image_speed=1;
		} 
	isBusy=false;
}
//idle animation

if(_movement==false)
{
	if((sprite_index==spr_playerwalk_down)||(sprite_index == spr_playerdash_down))&&(!isBusy)
	{
		sprite_index=spr_playeridle_down
	}
	else if ((sprite_index==spr_playerwalk_up)||(sprite_index == spr_playerdash_up))&&(!isBusy)
	{
		sprite_index=spr_playeridle_up
	}
	else if ((sprite_index==spr_playerwalk_right)||(sprite_index == spr_playerdash_right))&&(!isBusy)
	{
		sprite_index=spr_playeridle_right
	}
	else if ((sprite_index==spr_playerwalk_left)||(sprite_index == spr_playerdash_left))&&(!isBusy)
	{
		sprite_index=spr_playeridle_left
	}
}

state()
  
	//aim direction

	aimDir = point_direction(x, y, mouse_x, mouse_y);
	
	//weapon swapping
	var _playerWeapons = global.PlayerWeapons;
	
	//cycle through weapons (wrap system)
	/*if swapKeyPressed
	{
		
		//change selection and wrap around
		selectedWeapon++;
		//wrap around if at end of array
		if selectedWeapon >= array_length(_playerWeapons) { selectedWeapon = 0 };
		//set new weapon
		weapon = _playerWeapons[selectedWeapon];
		
	}*/
	
	//cycle through weapons (key press system)
	if swapKey1 { weapon = _playerWeapons[0] }
	if swapKey2 {weapon = _playerWeapons[1] }
	
	
	//shooting the weapon
	if shootTimer > 0 { shootTimer--; };
	if shootKey	&& shootTimer <= 0
	{
		//reset timer
		shootTimer = weapon.cooldown;
		//create bullet
		var _xOffset = lengthdir_x( weapon.length + weaponOffsetDist, aimDir)
		var _yOffset = lengthdir_y( weapon.length + weaponOffsetDist , aimDir)
		var _bulletInst = instance_create_depth( x + _xOffset + 3, y + _yOffset - 9, depth-100, weapon.bulletObj);
		
		//change bullet direction
		with (_bulletInst)
		{
			dir = other.aimDir;
			//turn the bullet to face correct direction at creation if needed
			if dirFix == true 
			{
				image_angle = dir;
			}
			if highSpeed == true
			{
				image_xscale = max(1, spd/sprite_width)
			}
		}
		
		audio_play_sound(snd_pistolshot,1,0)
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
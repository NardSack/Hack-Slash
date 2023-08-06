//drawing the player's weapon
function draw_my_weapon()
	{
		//draw weapon
		//get weapon off player's body
		var _xOffset = lengthdir_x(weaponOffsetDist + 3, aimDir);
		var _yOffset = lengthdir_y(weaponOffsetDist, aimDir);
		
		//pin gun on character
		var _weaponYsc1 = 1;

		//flip weapon upright
		if aimDir > 90 && aimDir <270
			{
				_weaponYsc1 = -1;
			}
	
		draw_sprite_ext(weapon.sprite, 0, (x+_xOffset), (y+_yOffset - 6) , 1, _weaponYsc1, aimDir, c_white, gun_alpha);
	}

function shoot_weapon()
{
	//create bullet
		var _xOffset = lengthdir_x( weapon.length + weaponOffsetDist, aimDir)
		var _yOffset = lengthdir_y( weapon.length + weaponOffsetDist , aimDir)
		

		
		var _spread = weapon.spread;
		var _spreadDiv = _spread / max( weapon.bulletNum-1 , 1 ) ; //angle is divided by amt of bullets, defaults to 1 if amt of bullets is 1
		
		//remove player health based on weapon cost
		hp -= weapon.cost;
		
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
}

//damage code
function get_damaged_create(_hp = 100, _iframes = false )
{

	hp = _hp;
	maxhp = _hp
	if _iframes = true
		{
			iframeTimer = 0;
			iframeNumber = 90;
		}
	//create damage list
	if _iframes = false
		{
			damageList = ds_list_create();	
		}
}

function get_damaged_cleanup()
{
	//DO NOT NEED IF USING IFRAMES
	ds_list_destroy(damageList);	
}

function get_damaged( _damageObj, _iframes = false )
	{
		//special exit for iframe timer
		if _iframes == true && iframeTimer > 0
			{
				iframeTimer--;
				
				if iframeTimer mod 6 == 0
					{
						if image_alpha == 1
							{
								image_alpha = 0;
							}
						else
							{
								image_alpha = 1;
							}
					}
				exit; //cut off the function if using iframes, so it only counts down the timer and does nothing else
			}
			
			//make sure frame blinking stops
			if _iframes == true
				{
					image_alpha = 1;
				}
		
		//receive damage
		if place_meeting(x, y, _damageObj)
			{

				//getting a list of	damage instances
				//copy damage instances into list
				var _instList = ds_list_create()
				instance_place_list( x, y, _damageObj, _instList, false);
	
				//get size of list
				var _listSize = ds_list_size(_instList);
		
				//loop through list
				var _hitConfirm = false;
				
				for (var i = 0; i < _listSize; i++)
					{
						//get a damage object instance from list
						var _inst = ds_list_find_value(_instList, i);
				
						//check if instance is in damage list already
						if _iframes == true || ds_list_find_index( damageList, _inst) == -1
							{
								//add new damage instance to the damage list
								if _iframes == false
									{
										ds_list_add(damageList, _inst);
									}
								//take damage from specific instance

								damage_entity( self, _inst, _inst.damage , self.knockback_time);
								show_hurt();
						
								_hitConfirm = true;
								//tell the damage instance it has hit
								_inst.hitConfirm = true;
							}
					}
					
					//set iframes if were hit
					if _iframes == true && _hitConfirm == true
						{
							iframeTimer = iframeNumber;
							
						}
			
				//prevent a memory leak by deleting created list
				ds_list_destroy(_instList);
				
			}
			
			//clear the damage list of objects that don't exist anymore or are no longer touching
			if _iframes == false
			{
				var _damageListSize = ds_list_size(damageList);
				for (var i = 0; i < _damageListSize; i++)
					{
						//if not touching damage instance anymore, remove from list and set loop back one
						var _inst = ds_list_find_value(damageList, i);
						if !instance_exists( _inst) || !place_meeting(x, y, _inst)
							{
								ds_list_delete( damageList, i);
								i--;
								_damageListSize--;
							}
					}
			}
	}
//receive damage
if place_meeting(x, y, obj_damage_enemy)
	{

		//getting a list of	damage instances
		//copy damage instances into list
		var _instList = ds_list_create()
		instance_place_list( x, y, obj_damage_enemy, _instList, false);
	
		//get size of list
		var _listSize = ds_list_size(_instList);
		
		//loop through list
		for (var i = 0; i < _listSize; i++)
			{
				//get a damage object instance from list
				var _inst = ds_list_find_value(_instList, i);
				
				//take damage from specific instance
				hp -= _inst.damage;
				
				//tell the damage instance to destroy
				_inst.destroy = true;
			}
			
		//prevent a memory leak
		ds_list_destroy(_instList);
		
	}

//death
if hp <= 0
	{
		current_state = enemy_states.DEAD;
	}

	switch (current_state)
	{
		case enemy_states.DEAD:
			instance_destroy();
		break;
	}


//receive damage
get_damaged( obj_damage_enemy );

//death
if hp <= 0
	{
		current_state = enemy_states.DEAD;
		hp = 0;
		image_index = 0;
	}

	switch (current_state)
	{
		case enemy_states.DEAD:
			instance_destroy();
		break;
	}


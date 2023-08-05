switch (current_state)
	{
		case enemy_states.DEAD:
			image_index = image_number - 1;
			image_speed = 0;
			instance_destroy();
		break;
		
		case enemy_states.ATTACK:
			image_index = 0;
			current_state = enemy_states.IDLE;
		break;
	}
























// Inherit the parent event
event_inherited();

